# CI/CD – Continuous Integration & Continuous Delivery/Deployment

## Overview

This section documents my learning throughout the **CI/CD module of the CoderCo DevOps Bootcamp**, focusing on how automated pipelines improve software development, testing and deployment.

## What is CI/CD?

CI/CD stands for **Continuous Integration, Continuous Delivery and Continuous Deployment**.

It is a set of DevOps practices that helps teams automate software integration, testing and releases, reducing manual processes and improving reliability.

### Continuous Integration (CI)

Continuous Integration involves developers frequently merging code changes into a shared repository, such as GitHub.

Each change can trigger an automated pipeline that:

- Builds the application.
- Runs automated tests.
- Identifies errors early.
- Validates code before merging.

This improves collaboration and prevents integration problems from accumulating.

### Continuous Delivery (CD)

Continuous Delivery ensures that code passing the required automated checks remains ready for production deployment.

The application is automatically built, tested and prepared for release, but production deployment typically requires manual approval.

**Key point:** Software is always ready to deploy, but the release decision remains manual.

### Continuous Deployment (CD)

Continuous Deployment extends Continuous Delivery by automatically releasing changes to production once all required pipeline checks pass.

No manual approval is required for each successful deployment.

**Key point:** Every successful change can automatically reach production.

## CI/CD Pipeline Workflow

```text
Developer Pushes Code
         |
         v
   GitHub Repository
         |
         v
   Build Application
         |
         v
   Automated Testing
         |
         v
   Validate Changes
         |
         v
   Deploy Application
         |
         v
      Production
```

## Why is CI/CD Important?

CI/CD provides several benefits:

- **Automation:** Reduces repetitive manual tasks.
- **Reliability:** Ensures consistent testing and deployment.
- **Speed:** Enables faster software releases.
- **Collaboration:** Supports frequent code integration.
- **Quality:** Detects errors earlier in development.

## CI/CD in DevOps

CI/CD connects technologies such as **GitHub, Docker, Terraform, AWS and Kubernetes** into automated workflows.

Throughout this module, I aim to understand how these technologies work together to build reliable deployment pipelines.

## Learning Resources

[CoderCo – What is CI/CD?](https://www.skool.com/coderco/classroom/290dac80?md=7d6163ebdbdf4be58ec0adcd786e9d6)