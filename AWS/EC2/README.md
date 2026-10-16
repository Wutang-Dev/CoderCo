# AWS EC2 & Compute

## Overview

This directory documents my learning and practical exercises involving AWS compute services as part of the CoderCo DevOps Bootcamp.

Compute refers to the processing resources required to run applications, services and workloads.

In traditional on-premises environments, organisations manage physical servers and their underlying infrastructure. With AWS, the physical infrastructure is managed by the cloud provider, allowing users to focus on deploying, configuring and managing their applications.

AWS provides several compute options depending on the requirements of the workload.

### Amazon EC2 (Elastic Compute Cloud)

Amazon EC2 provides virtual servers in the cloud, similar to virtual machines running on VMware, Hyper-V or Proxmox.

EC2 allows users to configure the operating system, install software, manage storage and control networking.

It provides flexibility when deploying applications that require control over the server environment.

### Containers – ECS & EKS

AWS provides managed services for deploying and managing containerised applications.

- **Amazon ECS (Elastic Container Service):** AWS's native container orchestration service for deploying and managing containers.
- **Amazon EKS (Elastic Kubernetes Service):** A managed Kubernetes service for running containerised workloads.

Containers package applications and their dependencies together, making deployment more consistent across different environments.

### Serverless – AWS Lambda

AWS Lambda allows developers to execute code without managing the underlying servers.

Lambda functions can run automatically in response to events and scale based on demand.

This approach is useful for event-driven applications, automation and workloads that do not require continuously running servers.

### High Availability & Scalability

High availability focuses on keeping applications accessible when infrastructure components fail.

Scalability refers to the ability to increase or decrease computing resources based on demand.

AWS provides services such as Elastic Load Balancing and Auto Scaling to help distribute workloads and adjust capacity.

## Practical Labs

| Exercise | Description | Status |
|---|---|---|
| [EC2 Instance Deployment](01EC2-Instance-SSH.md) | Launch an EC2 instance, configure SSH and connect remotely | Complete |
| [EC2 Web Server](02appache-web-server.md) | Deploy an Apache web server using EC2 User Data | Complete |
  
## Learning Objectives

- Understand the different AWS compute services.
- Deploy and configure EC2 instances.
- Explore EC2 instance types and sizing options.
- Understand EC2 User Data and automated configuration.
- Practise connecting to and managing EC2 instances.
- Understand high availability and scalability.
- Develop practical AWS compute administration skills.

## What I Learnt

*To be updated as I complete practical exercises.*

## Troubleshooting

*To be updated as I encounter and resolve issues.*

---

[Back to AWS Home](../README.md)