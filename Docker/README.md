# Docker

This directory documents my practical Docker and containerisation learning as part of the CoderCo DevOps bootcamp.

The module progresses from container fundamentals through to building, networking and managing multi-container applications.

## Module Objectives

Throughout this module I will develop practical experience with:

- Container fundamentals and Docker architecture
- Docker images and containers
- Dockerfiles and custom image builds
- Port mapping
- Docker networking
- Environment variables
- Volumes and persistent storage
- Docker Compose
- Multi-container applications
- Docker Hub and AWS ECR
- Multi-stage builds
- Container scaling with NGINX
- Flask, MySQL and Redis containers

## Practical Work

My hands-on labs and supporting documentation are stored in the [Exercises](Exercises/) directory.

| Exercise | Description | Status |
|---|---|---|
| [Hello Docker](Exercises/hello-docker.md) | Installed Docker Engine, verified the service and ran my first container | Complete |
| Container Management | Managing running and stopped containers | Planned |
| First Dockerfile | Build a custom Docker image | Planned |
| Flask Container | Containerise a Python Flask application | Planned |
| Docker Networking | Create and manage custom Docker networks | Planned |
| Flask + MySQL | Connect application and database containers | Planned |
| Docker Compose | Manage a multi-container application | Planned |
| Volumes | Implement persistent container storage | Planned |

## Current Progress

- [x] Installed Docker Engine on Ubuntu Server
- [x] Verified the Docker daemon is running
- [x] Pulled the `hello-world` image
- [x] Ran my first container
- [x] Documented Docker daemon permission troubleshooting
- [x] Documented Docker daemon permission troubleshooting
- [x] Practise container management
- [x] Build my first custom image
- [x] Containerise a Flask application
- [ ] Configure Docker networking
- [ ] Deploy a multi-container application
- [ ] Implement Docker Compose
- [ ] Configure persistent storage
- [ ] Push images to a container registry
- [ ] Complete the CoderCo Docker assignment

## Projects

Later stages of the module will include:

- Flask web application
- MySQL database integration
- Redis caching
- Persistent storage
- Docker Compose
- Docker Hub
- AWS ECR
- Multi-stage image builds
- NGINX load balancing
- Container scaling

## Repository Structure

```text
Docker/
├── README.md
├── Exercises/
│   ├── README.md
│   ├── hello-docker.md
│   └── screenshots/
│       └── docker-install.png
└── Assignment/
```

## Environment

Docker Engine is running on an Ubuntu Server VM hosted within my Proxmox homelab.

The repository will be updated throughout the module with practical exercises, configurations, troubleshooting documentation and completed projects.