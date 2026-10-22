# Assignment 2 – AWS Application Load Balancer

## Overview

This assignment was completed as part of the CoderCo DevOps Bootcamp AWS module.

The objective was to deploy two Amazon EC2 instances behind an Application Load Balancer (ALB), configure security groups to control incoming traffic, and verify that the ALB distributes HTTP requests between both instances.

The assignment also provided practical experience troubleshooting security groups, subnet configurations, EC2 networking, and target group health checks.

## Objectives

- Deploy two EC2 instances running Apache.
- Configure an Application Load Balancer.
- Ensure EC2 instances are not directly accessible from the internet.
- Configure security groups to control HTTP traffic.
- Register both instances with a target group.
- Verify that both instances pass their health checks.
- Test load balancing through the ALB DNS endpoint.

## Architecture

```text
                  Internet
                     |
                     v
             Client Browser
                     |
                HTTP Port 80
                     |
                     v
          Application Load Balancer
                   ALB-SG
                     |
                     v
                 Target Group
                     |
           ---------------------
           |                   |
           v                   v
      EC2 Instance 1      EC2 Instance 2
      Amazon Linux        Amazon Linux
      Apache :80          Apache :80
           |                   |
           ---------------------
                     |
                   EC2-SG
```

The Application Load Balancer acts as the entry point for incoming HTTP requests and forwards traffic to the registered EC2 instances.

---

## 1. Configuring Security Groups

I first created two security groups to control traffic between the Application Load Balancer and the EC2 instances.

The assignment required that the EC2 instances should not be directly accessible from the internet.

### Application Load Balancer Security Group (ALB-SG)

This security group controls traffic reaching the public-facing load balancer.

**Inbound Rules**

| Type | Port | Source |
|---|---|---|
| HTTP | 80 | My Public IP /32 |

**Outbound Rules**

| Type | Port | Destination |
|---|---|---|
| HTTP | 80 | EC2-SG |

This allows my browser to access the load balancer while restricting incoming HTTP traffic to my public IP.

![ALB Security Group Outbound Rules](Images/alb-sg-outbound.png)

### EC2 Security Group (EC2-SG)

The second security group controls traffic reaching the EC2 instances.

**Inbound Rules**

| Type | Port | Source |
|---|---|---|
| HTTP | 80 | ALB-SG |

**Outbound Rules**

| Type | Port | Destination |
|---|---|---|
| All Traffic | All | 0.0.0.0/0 |

Rather than allowing inbound HTTP traffic from `0.0.0.0/0`, I selected the ALB security group as the source.

This restricts HTTP access to resources associated with ALB-SG rather than allowing unrestricted inbound internet access.

![EC2 Security Group Inbound Rules](Images/ec2-sg-inbound.png)

---

## 2. Deploying the EC2 Instances

I launched two EC2 instances using Amazon Linux.

For the instance type, I selected `t3.micro`, which was listed as Free Tier eligible in my AWS environment.

I did not create a key pair for this assignment because my objective was to test the load balancer through a web browser rather than connect to the instances using SSH.

### EC2 Configuration

| Setting | Configuration |
|---|---|
| Operating System | Amazon Linux |
| Instance Type | t3.micro |
| VPC | Default VPC |
| Security Group | EC2-SG |
| Web Server | Apache |
| HTTP Port | 80 |

### Selecting the Operating System

![Amazon Linux OS Selection](Images/aws-os.png)

### Selecting the Instance Type

![EC2 t3.micro Instance Type](Images/t3-micro-instance.png)

### Configuring Network Settings

I configured the instances to use my existing VPC and selected the EC2 security group created earlier.

![EC2 Network Settings](Images/network-settings-instance.png)

### Configuring User Data

I used an EC2 user-data script to automate the installation of Apache and create a simple webpage displaying the instance hostname.

This would allow me to identify which instance was responding when accessing the load balancer.

![EC2 User Data Script](Images/user-data-script.png)

### EC2 Public IP Configuration

During deployment, I noticed that one of the instances did not have a public IPv4 address.

I investigated the network configuration and allocated an Elastic IP.

Although an EC2 instance does not require a public IP to receive traffic from an ALB, outbound internet connectivity may be necessary when downloading packages during instance initialization.

![EC2 Without Public IP Address 1](Images/no-public-ip-1.png)

![EC2 Without Public IP Address 2](Images/no-public-ip-2.png)

![Elastic IP Allocation](Images/elastic-ip-1.png)

---

## 3. Creating the Application Load Balancer

I then created an Application Load Balancer to distribute HTTP requests between the two EC2 instances.

The load balancer was configured to listen on HTTP port 80 and forward requests to a target group.

### ALB Configuration

![Load Balancer Configuration 1](Images/lb-1.png)

![Load Balancer Configuration 2](Images/lb2.png)

![Load Balancer Configuration 3](Images/lb-3.png)

![Load Balancer Configuration 4](Images/lb-4.png)

![Load Balancer Configuration 5](Images/lb-5.png)

### Creating the Target Group

I created a target group and registered both EC2 instances.

The target group was configured to forward HTTP traffic on port 80 and perform health checks to determine whether each instance was available.

![Creating Target Group 1](Images/create-tg-1.png)

![Creating Target Group 2](Images/create-tg-2.png)

![Creating Target Group 3](Images/create-tg-3.png)

![Creating Target Group 4](Images/create-tg-4.png)

![Creating Target Group 5](Images/create-tg-5.png)

![Load Balancer Configuration 6](Images/lb-6.png)

---

## 4. Troubleshooting Subnet Configuration

During the load balancer deployment, AWS returned the following error:

`At least two subnets must be specified`

![ALB Subnet Error](Images/lb-subnet-error.png)

Only one suitable subnet was available for selection.

Application Load Balancers require subnets in at least two different Availability Zones.

To resolve this, I created a second subnet within my existing VPC.

The new subnet used the CIDR range `172.31.1.0/24`, which falls within the VPC's `172.31.0.0/16` address range.

I also checked the route table configuration to verify that the subnet had a route to the Internet Gateway.

![Creating Second Subnet](Images/create-subnet.png)

![Second Subnet Configuration](Images/create-subnet-2.png)

After creating the additional subnet, I continued configuring the load balancer.

![ALB Subnet Selection](Images/lb-7.png)

---

## 5. Troubleshooting Unhealthy Targets

After creating the load balancer, I checked the registered instances in the target group.

![Initial Target Group Health Check](Images/tg-health-check-1.png)

Both instances initially returned an **Unhealthy** status.

The health status details indicated that requests were timing out.

![Unhealthy Target Group](Images/health-check-unhealthy.png)

### Troubleshooting Step 1 – Checking Security Groups

My first step was to review the security groups configured for the load balancer and EC2 instances.

I discovered that I had referenced the wrong security group in the EC2 inbound HTTP rule.

I corrected the rule to reference the ALB security group.

![Correcting EC2 Inbound Rule](Images/inbound-rule-change.png)

However, both instances continued to return an unhealthy status.

### Troubleshooting Step 2 – Reviewing Health Check Settings

I then checked the target group's health check configuration.

| Setting | Value |
|---|---|
| Protocol | HTTP |
| Path | / |
| Port | Traffic Port (80) |
| Healthy Threshold | 5 |
| Unhealthy Threshold | 2 |
| Timeout | 5 seconds |
| Interval | 30 seconds |
| Success Code | 200 |

The health check settings appeared correct, so I continued troubleshooting.

### Troubleshooting Step 3 – Testing Direct HTTP Access

To determine whether the issue was related to Apache, the user-data script, or the ALB configuration, I temporarily added an inbound HTTP rule allowing access from my public IP.

I then accessed the EC2 instance directly using its public IPv4 address.

The webpage loaded successfully and displayed the instance hostname.

This confirmed that Apache was running and serving HTTP requests on that instance.

It also suggested that the issue was related to the ALB configuration or network connectivity between the load balancer and EC2.

![Temporary Port 80 Troubleshooting Test](Images/port-80-troubleshoot-test.png)

### Troubleshooting Step 4 – Checking the ALB Security Group

I inspected the security group attached to the Application Load Balancer.

I discovered that the ALB was using the default security group rather than the dedicated ALB-SG I had created earlier.

I had likely missed this selection during the initial load balancer configuration.

I replaced the default security group with ALB-SG.

![ALB Security Group Check](Images/alb-sg-check.png)

After making this change, one of the EC2 instances became healthy.

This confirmed that the incorrect ALB security group was contributing to the failed health checks.

### Troubleshooting Step 5 – Investigating the Second EC2 Instance

With one instance healthy, I focused on the remaining unhealthy instance.

I checked its networking configuration and noticed that it did not have a public IPv4 address.

Although the subnet had a route to an Internet Gateway, an instance without a public IP cannot use that route for direct IPv4 internet connectivity.

This potentially prevented the user-data script from downloading and installing Apache.

I decided to rebuild the second instance, ensuring that it had the correct networking configuration and a public IPv4 address.

After registering the replacement instance, both targets returned a **Healthy** status.

![Both EC2 Targets Healthy](Images/health-check-healthy.png)

---

## 6. Verifying the Application Load Balancer

With both instances healthy, I tested the Application Load Balancer using its DNS endpoint.

I refreshed the webpage several times and observed responses from two different EC2 instances.

### EC2 Instance 1

`ip-172-31-0-46.eu-north-1.compute.internal`

![Load Balancer Verification Instance 1](Images/load-balancer-verify-1.png)

### EC2 Instance 2

`ip-172-31-1-196.eu-north-1.compute.internal`

![Load Balancer Verification Instance 2](Images/load-balancer-verify-2.png)

Both responses were received through the same ALB DNS endpoint.

This demonstrated that the Application Load Balancer was successfully distributing HTTP requests between the two registered instances.

---

## 7. What I Learned

### Security Groups

I learned how to reference one security group from another rather than allowing unrestricted inbound access.

This allows EC2 instances to receive traffic through the ALB while restricting direct HTTP access from the internet.

### VPC Networking and Subnets

I gained a better understanding of VPC CIDR ranges, subnet creation, route tables and Internet Gateways.

I also learned that a subnet having a route to an Internet Gateway does not automatically mean every instance within that subnet has internet connectivity.

### EC2 User Data

User-data scripts allow software installation and web server configuration to be automated during instance deployment.

However, scripts that download packages require the instance to have suitable outbound network connectivity.

### Application Load Balancer Health Checks

Health checks allow the load balancer to determine whether registered targets are available to receive traffic.

I learned how to troubleshoot unhealthy targets by reviewing security groups, health check settings, web server availability and instance networking.

### Troubleshooting

The most valuable part of this assignment was learning how to isolate problems rather than immediately rebuilding the entire environment.

I started by reviewing the security groups, checking the health check configuration and testing direct HTTP connectivity.

Once I corrected the ALB security group, one instance became healthy, allowing me to focus on the remaining unhealthy instance.

The evidence suggested that the original second instance may have lacked the outbound internet connectivity required for the user-data script to install Apache.

Although this was not conclusively confirmed through the instance logs, rebuilding the instance with the correct networking configuration resolved the issue.

---

## 8. Conclusion

I successfully deployed two Amazon Linux EC2 instances behind an AWS Application Load Balancer.

Both instances passed their target group health checks, and I verified that HTTP requests were being distributed between the two servers.

The assignment strengthened my understanding of EC2, security groups, Application Load Balancers, target groups, VPC networking and troubleshooting cloud infrastructure.

The biggest takeaway was understanding how individual AWS networking components work together and how a misconfiguration in one component can affect the entire deployment.