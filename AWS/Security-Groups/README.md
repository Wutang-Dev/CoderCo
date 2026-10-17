# AWS Security Groups

## Overview

This directory documents my practical learning and exercises with AWS Security Groups as part of the CoderCo DevOps programme.

Security Groups act as virtual firewalls for AWS resources, controlling inbound and outbound network traffic.

The focus of this module is understanding how Security Groups protect EC2 instances, how network ports and protocols are configured, and how access can be restricted using firewall rules.

## Learning Objectives

- Understand the purpose of Security Groups in AWS.
- Configure inbound and outbound rules.
- Understand common network ports and protocols, including SSH (22), HTTP (80) and HTTPS (443).
- Restrict administrative access using trusted IP addresses.
- Understand how stateful firewalls handle return traffic.
- Explore how multiple Security Groups can be associated with EC2 instances.
- Troubleshoot connectivity issues caused by Security Group rules.
- Apply basic AWS network security best practices.

## Practical Labs

| Exercise | Description | Status |
|---|---|---|
| [EC2 Security Group – Inbound Rules](01inboundrules.md) | Launched an Ubuntu EC2 instance and configured inbound rules for SSH (22) and HTTP (80) | Complete |

## Key Concepts

| Concept | Description |
|---|---|
| Inbound Rules | Control incoming traffic to AWS resources |
| Outbound Rules | Control outgoing traffic from AWS resources |
| Stateful Firewall | Automatically permits response traffic for allowed connections |
| TCP | Connection-oriented transport protocol used by SSH, HTTP and HTTPS |
| CIDR | Defines an IP address or range of addresses |
| Least Privilege | Allows only the network access required for a resource |

## Technologies Used

- Amazon Web Services (AWS)
- Amazon EC2
- Ubuntu Server
- AWS Security Groups
- TCP/IP Networking
- SSH and HTTP

## Key Takeaways

Security Groups provide an important layer of network security for AWS resources.

Through these exercises, I am developing a better understanding of how network access is controlled in cloud environments and how firewall rules affect connectivity.

These concepts build on my existing networking knowledge and will be useful when deploying and securing more complex cloud infrastructure.