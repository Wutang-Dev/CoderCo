# Docker Compose – My First Multi-Container Application

## Overview

As part of my CoderCo Docker module, I created my first Docker Compose YAML file to manage a Flask web application and MySQL database.

Previously, I had been creating and managing containers individually using Docker CLI commands.

The objective of this exercise was to understand how Docker Compose simplifies the deployment and management of multiple containers using a single YAML configuration file.

This exercise covered:

- Creating a Docker Compose YAML file.
- Defining a multi-container application.
- Starting Flask and MySQL using Docker Compose.
- Understanding Docker Compose networking.
- Troubleshooting container port conflicts.
- Managing existing Docker containers.

## 1. Creating the Docker Compose YAML File

I started by navigating to my existing Hello Flask project directory on my Ubuntu Server VM.

I then created a new Docker Compose configuration file:

```bash
touch docker-compose.yml
```

This file would define the services required to run my Flask application and MySQL database.

![Creating Docker Compose YAML File](../Screenshots/29-create-docker-compose-yaml.png)

## 2. Configuring Docker Compose in VS Code

I opened the `docker-compose.yml` file using VS Code Remote-SSH.

The purpose of the configuration was to define two services:

- **Web:** My Flask application, built using the existing Dockerfile and exposed on port 5000.
- **DB:** A MySQL database container used by the Flask application.

Docker Compose also creates a default network, allowing services to communicate using their service names.

For example, Flask can connect to MySQL using `db` as the hostname when the database service is named `db`.

This removes the need to manually create and connect containers to a custom Docker network.

![Configuring Docker Compose in VS Code](../Screenshots/30-creating-docker-compose-yml-vs-code.png)

## 3. Starting the Containers Using Docker Compose

After creating the YAML configuration, I attempted to start both services using:

```bash
sudo docker compose up
```

This command instructs Docker Compose to build any required images, create the containers and networks, and start the defined services.

The Flask image built successfully, and Docker Compose created the necessary containers and default network.

However, I encountered an error when Docker attempted to start the Flask container.

![Initial Docker Compose Execution](../Screenshots/31-running-docker-compose-up.png)

### Error – Port Already Allocated

The terminal displayed:

```text
failed to bind host port for 0.0.0.0:5000:
port is already allocated
```

The error occurred because my original Flask container was still running and using host port 5000.

Docker could not bind another container to the same host IP address and port.

Although my existing MySQL container was also running, it was not responsible for this particular error.

**Lesson learned:** Multiple containers cannot publish the same host IP address and port combination simultaneously.

## 4. Troubleshooting the Port Conflict

### Step 1 – Identify Running Containers

To investigate the issue, I ran:

```bash
sudo docker ps
```

This command lists running Docker containers, including their names, images, status and published ports.

I identified my original Flask container, named `charming_wilson`, which was already using port 5000.

![Identifying Running Containers](../Screenshots/32-fixing-error.png)

### Step 2 – Stop the Existing Flask Container

Once I identified the container responsible for the port conflict, I stopped it using:

```bash
sudo docker stop charming_wilson
```

This stopped the original Flask application and released its published host port.

![Stopping Flask Container](../Screenshots/33-stop-charming-wilson.png)

### Step 3 – Verify the Container Had Stopped

I then ran:

```bash
sudo docker ps
```

The output confirmed that `charming_wilson` was no longer running.

This meant that port 5000 was available for my new Docker Compose Flask service, assuming no other process was using it.

![Verifying Container Status](../Screenshots/34-confirm-charming-wilson-stop.png)

## 5. Successfully Starting Docker Compose

After resolving the port conflict, I ran:

```bash
sudo docker compose up
```

This time, Docker Compose successfully started both services.

The terminal confirmed that the MySQL container was running and the Flask application had started.

Flask displayed:

```text
* Serving Flask app 'app'
* Debug mode: off
* Running on all addresses (0.0.0.0)
* Running on http://127.0.0.1:5000
```

![Successful Docker Compose Execution](../Screenshots/35-re-run-docker-compose-up.png)

This confirmed that Docker Compose could start the multi-container application without the previous port-binding error.

The next step is to verify that Flask can successfully query the MySQL database.

## 6. Understanding Docker Compose

This exercise demonstrated the difference between managing containers manually and using Docker Compose.

### Before Docker Compose

I was responsible for creating networks, building images and starting containers individually.

For example:

```bash
sudo docker network create my-custom-network
```

```bash
sudo docker build -t hello-flask-mysql .
```

```bash
sudo docker run -d --name mydb \
  --network my-custom-network \
  -e MYSQL_ROOT_PASSWORD=my-secret-pw \
  mysql:5.7
```

Each component required separate commands.

### With Docker Compose

Docker Compose allows me to define the application services, build configuration, networks and other settings in a single YAML file.

I can then start the application using:

```bash
sudo docker compose up
```

This makes multi-container applications easier to deploy, manage and reproduce.

## 7. Useful Docker Compose Commands

| Command | Description |
|---|---|
| `sudo docker compose up` | Build, create and start services |
| `sudo docker compose up -d` | Start services in detached mode |
| `sudo docker compose ps` | List Compose-managed containers |
| `sudo docker compose logs` | View service logs |
| `sudo docker compose logs -f` | Follow service logs in real time |
| `sudo docker compose down` | Stop and remove Compose containers and networks |
| `sudo docker compose up --build` | Rebuild images before starting services |

## 8. Key Takeaways

This exercise helped reinforce several important Docker concepts:

1. **Infrastructure configuration:** Docker Compose uses YAML to define and manage multi-container applications.
2. **Container networking:** Compose creates a default network that allows services to communicate using service names.
3. **Port management:** Containers cannot bind to host ports already allocated to another process or container.
4. **Troubleshooting:** `docker ps` is useful for identifying running containers and investigating port conflicts.
5. **Container lifecycle:** Existing containers can be stopped without deleting their images.
6. **Automation:** Docker Compose reduces the number of manual commands required to deploy an application.

## 9. Next Steps

Following the successful startup of my Flask and MySQL services, my next objectives are to:

- Verify Flask can successfully connect to MySQL.
- Test the application using `curl http://localhost:5000`.
- Explore running Docker Compose in detached mode.
- Implement persistent database storage using Docker volumes.
- Improve the configuration by removing the obsolete `version` attribute and managing credentials outside the YAML file.

**Project status:** Docker Compose build and container startup completed. Database connectivity verification pending.

---

*Part of my CoderCo DevOps learning journey – Docker module.*