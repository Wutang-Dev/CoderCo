# AWS Security Groups and Cloud Networking

## Overview

This directory documents my practical learning and exercises from the CoderCo AWS Security Groups and Cloud Networking module.

The focus of this module is understanding how networking works within AWS, how EC2 instances communicate, and how network traffic is controlled using Security Groups.

Through practical exercises, I am exploring cloud networking concepts including public and private IP addressing, Elastic IPs, VPCs, subnets, routing and firewall configuration.

## Learning Objectives

- Understand how AWS Security Groups control inbound and outbound traffic.
- Configure firewall rules using ports, protocols and IP address ranges.
- Apply the principle of least privilege when configuring SSH access.
- Understand the difference between public and private IP addresses.
- Allocate and associate Elastic IP addresses with EC2 instances.
- Understand the purpose of VPCs and subnets.
- Explore Internet Gateways, route tables and network connectivity.
- Troubleshoot networking and connectivity issues in AWS.
- Develop practical cloud networking and security skills.

## Practical Labs

| Exercise | Description | Status |
|---|---|---|
| [Security Groups – Inbound Rules](01inboundrules.md) | Launched an Ubuntu EC2 instance and configured SSH (22) and HTTP (80) inbound rules | Complete |
| [Elastic IP Address](02elastic-ip.md) | Allocated and associated a static public IPv4 address with an EC2 instance | Complete |

## Key Concepts

| Concept | Description |
|---|---|
| Security Groups | Stateful virtual firewalls that control network traffic |
| Inbound Rules | Define which incoming connections are permitted |
| Outbound Rules | Define which outgoing connections are permitted |
| CIDR | Defines individual IP addresses or IP address ranges |
| Public IP Address | An internet-routable IP address |
| Private IP Address | An IP address used for communication within private networks |
| Elastic IP | A static public IPv4 address allocated to an AWS account |
| VPC | A logically isolated virtual network within AWS |
| Subnet | A range of IP addresses within a VPC |
| Internet Gateway | Enables internet connectivity for appropriately routed resources |
| Route Table | Determines where network traffic is directed |

## Technologies Used

- Amazon Web Services (AWS)
- Amazon EC2
- AWS Security Groups
- AWS Elastic IP
- Amazon VPC
- Ubuntu Server
- TCP/IP Networking
- SSH and HTTP

## Key Takeaways

The Security Groups and Cloud Networking module is helping me understand how AWS resources communicate and how network access is controlled.

Through the practical labs completed so far, I have configured inbound firewall rules, restricted SSH access to a trusted IP address and associated a static public IPv4 address with an EC2 instance.

These exercises have reinforced my understanding of networking fundamentals and how they apply to cloud infrastructure.

As I progress through the module, I will continue exploring AWS networking concepts and documenting additional practical exercises.