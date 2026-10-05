# Docker

This directory documents my Docker and containerisation learning as part of the CoderCo DevOps bootcamp.

The aim of this module is to develop my understanding of containerisation and gain practical experience with Docker, progressing from container fundamentals to building and managing multi-container applications.

---

## Module Objectives

By the end of this module, I aim to understand and gain practical experience with the following Docker concepts.

### Container Fundamentals

- Understand how containers package applications and their dependencies
- Understand how containers share the host operating system kernel
- Understand process-level isolation and how containers remain separated from each other
- Understand why containerisation helps create consistent application environments

### Docker vs Virtual Machines

- Understand the differences between containers and virtual machines
- Learn why containers are generally more lightweight than virtual machines
- Understand why containers can start quickly compared with virtual machines
- Understand that virtual machines contain a full guest operating system while containers share the host kernel

### Docker Architecture

- Understand the role of Docker Engine
- Understand the role of the Docker daemon
- Understand how the Docker CLI communicates with the Docker daemon
- Learn how Docker manages images, containers, networks and volumes
- Understand how containers share the host kernel while remaining isolated

### Key Docker Components

- **Docker Engine** - Core container runtime and management platform
- **Docker Hub** - Public container image registry
- **Docker Compose** - Tool for defining and managing multi-container applications

### Images and Containers

- Understand the difference between Docker images and containers
- Understand that images act as reusable templates for applications
- Understand that containers are instances created from Docker images
- Learn how Docker retrieves images from container registries

### Docker Installation

- Install Docker Engine on my Ubuntu Server VM
- Verify the Docker installation
- Check that the Docker service is running
- Run my first container

Commands:

```bash
docker --version
docker info
systemctl status docker
sudo docker run hello-world
```

### Basic Docker Commands

Run a container:

```bash
docker run image_name
```

View running containers:

```bash
docker ps
```

View all containers:

```bash
docker ps -a
```

View downloaded images:

```bash
docker images
```

### Container Management

- Start and stop containers
- Remove containers
- Inspect running and stopped containers
- View locally stored Docker images

Commands:

```bash
docker stop container_id
docker rm container_id
docker images
```

### Dockerfile Fundamentals

Understand the purpose of common Dockerfile instructions:

- `FROM` - Specify the base image
- `WORKDIR` - Set the working directory
- `COPY` - Copy files into the image
- `RUN` - Execute commands while building the image
- `EXPOSE` - Document the port used by the application
- `CMD` - Define the default command executed when the container starts

### Building Docker Images

- Create images from Dockerfiles
- Understand the Docker image build process
- Tag images with meaningful names
- Create reusable application images

Example:

```bash
docker build -t image_name .
```

### Running Containers

- Create containers from Docker images
- Run containers in detached mode
- Configure port mappings between the host and container
- Understand the relationship between an image and a running container

Example:

```bash
docker run -d -p host_port:container_port image_name
```

### Containerised Flask Application

- Create a simple Python Flask web application
- Write a Dockerfile for the application
- Build the application into a Docker image
- Create a container from the image
- Run the Flask application inside the container
- Access the application through the host machine

### Port Mapping

- Understand the difference between host ports and container ports
- Expose containerised applications to external clients
- Configure port mappings using the `-p` option

Example:

```bash
docker run -p 5002:5002 image_name
```

### Docker Networking

- Understand how containers communicate
- Create custom Docker networks
- Connect multiple containers to the same network
- Understand Docker's internal container networking

Example:

```bash
docker network create network_name
```

### Linking Containers

- Connect a Flask application to a MySQL database
- Use custom Docker networks for container communication
- Understand how containers can communicate using container or service names
- Test connectivity between containers

### Environment Variables

- Pass application configuration into containers using environment variables
- Understand how environment variables can change container configuration
- Understand why configuration should be separated from application images

Example:

```bash
docker run -e MYSQL_ROOT_PASSWORD=password mysql
```

### Multi-Container Applications

- Run web application and database containers together
- Connect multiple containers using Docker networks
- Understand the basic architecture of a multi-container application
- Manage dependencies between application services

### Docker Compose

- Define multiple services using a Compose YAML file
- Start an entire application stack from a single configuration
- Stop an application stack
- View logs from services
- Manage related containers together

Commands:

```bash
docker compose up
docker compose down
docker compose logs
```

---

## Practical Learning Roadmap

### Complete Docker Setup

- Install Docker Engine
- Verify the installation
- Check the Docker service
- Test Docker using `hello-world`
- Set up the Docker section of my GitHub repository

### Build a Flask Application

- Create a Python web application
- Write a Dockerfile
- Build a Docker image
- Run the container
- Configure port mapping
- Access the application through the network

### Database Integration

- Deploy a MySQL container
- Create a custom Docker network
- Connect the Flask application to MySQL
- Test communication between the containers

### Docker Compose

- Convert the multi-container environment into a Compose configuration
- Define application services
- Start all services together
- Stop and remove services
- Inspect container logs

Commands to practise:

```bash
docker compose up
docker compose down
docker compose logs
```

### Container Registry Workflow

- Create and tag Docker images
- Push images to Docker Hub
- Pull images onto another machine
- Understand how container registries fit into a deployment workflow
- Configure AWS Elastic Container Registry (ECR)
- Push private container images to AWS ECR

### Volumes and Persistent Storage

- Add Redis to the application stack
- Configure Docker volumes
- Understand the difference between temporary container storage and persistent storage
- Verify that application data survives container restarts

### Environment Variables

- Configure applications using environment variables
- Separate application configuration from the container image
- Test the application using different environment configurations

### Multi-Stage Builds

- Create a multi-stage Dockerfile
- Optimise Docker images
- Compare image sizes before and after optimisation
- Understand why smaller container images are useful for deployment

### Scaling

- Run multiple instances of the web application
- Scale the application using Docker Compose
- Configure NGINX as a load balancer
- Distribute requests between multiple containers

Example:

```bash
docker compose up --scale web=3
```

### Real-World Project

Build a complete containerised application stack consisting of:

- Flask web application
- Database
- Redis cache
- Docker networking
- Persistent storage
- Environment variables
- Docker Compose

### CoderCo Container Challenge

Complete the CoderCo container challenge using:

- Flask
- Redis
- Persistent storage
- Docker Compose
- Container scaling

---

## Progress

- [x] Docker installed on Ubuntu Server VM
- [x] Docker service verified as active
- [x] Docker version verified
- [x] First `hello-world` image pulled
- [x] First `hello-world` container successfully run
- [x] Identified Docker daemon permission requirement when running as a non-root user
- [ ] Practise basic container management
- [ ] Build Flask application
- [ ] Create first Dockerfile
- [ ] Build custom Docker image
- [ ] Configure port mapping
- [ ] Configure container networking
- [ ] Integrate MySQL
- [ ] Create Docker Compose configuration
- [ ] Work with Docker Hub
- [ ] Configure AWS ECR
- [ ] Implement persistent storage
- [ ] Configure environment variables
- [ ] Create multi-stage build
- [ ] Implement container scaling
- [ ] Complete real-world project
- [ ] Complete CoderCo container challenge

---

## Repository Structure

```text
Docker/
├── README.md
└── Assignment/
    └── .gitkeep
```

The `Assignment` directory will contain my practical CoderCo Docker assignment and supporting documentation as I progress through the module.

---

## Environment

My Docker labs are being completed on an Ubuntu Server virtual machine running within my Proxmox homelab.

Docker Engine is installed directly on the Ubuntu Server VM rather than using Docker Desktop.

The repository will be updated throughout the module with:

- Docker commands
- Dockerfiles
- Compose configurations
- Application code
- Networking configurations
- Troubleshooting notes
- Screenshots
- Completed projects and assignments

The goal is to document both successful implementations and problems encountered while developing practical Docker and DevOps skills.