# My First Dockerfile - Containerising a Flask Application

## Overview

In this exercise, I created a simple Python Flask web application and then containerised it using Docker.

The aim was to practise the complete process of creating an application, writing my first Dockerfile, building a custom Docker image, running a container and verifying that the application was working.

I also encountered several errors during the exercise, which gave me useful troubleshooting experience with Python package management and Docker permissions.

---

## 1. Checking Python

I first confirmed that Python was installed on my Ubuntu Server VM:

```bash
python3 --version
```

---

## 2. Installing Flask

I initially attempted to install Flask using:

```bash
pip install Flask
```

However, I discovered that `pip` was not installed on the VM.

I installed it using:

```bash
sudo apt install python3-pip
```

I then tried:

```bash
pip install Flask
```

This produced an `externally-managed-environment` error.

![Flask installation error](screenshots/1-install-flask-error.png)

The error indicated that the Ubuntu Python environment was externally managed and suggested installing the required package through APT.

I therefore installed Flask using:

```bash
sudo apt install python3-flask
```

I verified the installation with:

```bash
flask --version
```

This returned:

```text
Python 3.12.3
Flask 3.0.2
Werkzeug 3.0.1
```

---

## 3. Creating the Flask Application

I created a directory for the application:

```bash
mkdir hello_flask
```

I then entered the directory:

```bash
cd hello_flask
```

And created the Python application file:

```bash
touch app.py
```

![Creating the application directory and files](screenshots/2-creating-dir-and-files.png)

---

## 4. Writing the Flask Application

I opened `app.py` in VS Code and created a simple Flask application:

```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, world!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

The application defines a route for `/` which returns:

```text
Hello, world!
```

I configured Flask to listen on:

```text
0.0.0.0:5000
```

Using `0.0.0.0` allows the application to listen on all available network interfaces rather than only the loopback interface.

![Flask application code](screenshots/3-code-app.png)

---

## 5. Testing the Application Before Containerising

Before creating the Docker image, I tested the Flask application directly on the Ubuntu Server VM:

```bash
python3 app.py
```

This allowed me to confirm that the application itself worked before introducing Docker.

![Testing Flask locally](screenshots/4-testing-the-app-locally.png)

This was useful because it separated application troubleshooting from Docker troubleshooting.

---

# Containerising the Application

## 6. Creating My First Dockerfile

I created a Dockerfile:

```bash
touch Dockerfile
```

I confirmed that the file had been created using:

```bash
ls
```

![Creating the Dockerfile](screenshots/5-creating-dockerfile.png)

I then edited the Dockerfile using VS Code.

![Creating the Dockerfile in VS Code](screenshots/6-creating-dockerfile-vs-code.png)

The Dockerfile defines the instructions Docker uses to build an image containing my Flask application.

---

## 7. Building the Docker Image

I attempted to build my custom Docker image using:

```bash
docker build -t hello-flask .
```

Where:

- `docker build` starts the image build process.
- `-t hello-flask` gives the image the tag `hello-flask`.
- `.` tells Docker to use the current directory as the build context.

![Docker build command](screenshots/7-docker-build-comand.png)

My initial build attempt produced an error.

![Docker build error](screenshots/8-docker-build-comand-error.png)

I investigated the error and corrected the issue.

![Docker build error correction](screenshots/9-docker-build-comand-permission-error.png)

I then encountered another error because my user did not have permission to communicate with the Docker daemon.

I had already encountered this behaviour when running my first `hello-world` container.

I therefore ran the build command with `sudo`:

```bash
sudo docker build -t hello-flask .
```

The image then built successfully.

![Successful Docker build](screenshots/10-docker-build-comand-fix.png)

---

## 8. Running My Flask Container

With the image successfully built, I created and started a container:

```bash
sudo docker run -d -p 5000:5000 hello-flask
```

![Running the Flask container](screenshots/11-docker-run.png)

The options used were:

- `docker run` - creates and starts a container from an image.
- `-d` - runs the container in detached mode.
- `-p 5000:5000` - maps port `5000` on the Ubuntu host to port `5000` inside the container.
- `hello-flask` - specifies the image to use.

The port mapping can be represented as:

```text
Ubuntu Server VM
Port 5000
    |
    v
Docker Host Port 5000
    |
    v
Container Port 5000
    |
    v
Flask Application
```

---

## 9. Verifying the Container

I checked that the container was running using:

```bash
sudo docker ps
```

The output showed my `hello-flask` image running with the following port mapping:

```text
0.0.0.0:5000->5000/tcp
```

![Verifying the container with docker ps](screenshots/12-verified-with-docker-ps.png)

This confirmed that the container was running and that Docker had published port `5000`.

---

## 10. Testing the Containerised Application

Because my Ubuntu Server VM does not have a graphical desktop, I tested the application using `curl`:

```bash
curl http://localhost:5000
```

The application returned:

```text
Hello, world!
```

I also tested the VM's network address:

```bash
curl http://10.10.10.168:5000
```

This also returned:

```text
Hello, world!
```

![Testing the container locally](screenshots/13-testing-localy-on-vm.png)

This confirmed that the Flask application was successfully running inside my Docker container and was accessible through the published host port.

---

## Troubleshooting

This exercise involved several problems that I had to investigate.

### Flask Installation

**Problem:**

Attempting to install Flask with `pip` resulted in:

```text
externally-managed-environment
```

**Solution:**

I installed the Ubuntu package instead:

```bash
sudo apt install python3-flask
```

### Docker Build

**Problem:**

My initial Docker image build failed.

**Solution:**

I reviewed the error, corrected the problem and attempted the build again.

### Docker Daemon Permissions

**Problem:**

Running Docker as my normal user produced a permission error when accessing the Docker daemon.

**Solution:**

For this exercise, I ran the Docker commands with `sudo`:

```bash
sudo docker build -t hello-flask .
sudo docker run -d -p 5000:5000 hello-flask
```

This allowed the build and container to run successfully.

---

## What I Learned

Through this exercise I gained practical experience with:

- Creating a simple Flask web application
- Testing an application before containerising it
- Creating my first Dockerfile
- Understanding the purpose of a Docker build context
- Building and tagging a custom Docker image
- Creating a container from my own image
- Running containers in detached mode
- Publishing container ports using `-p`
- Checking running containers with `docker ps`
- Testing HTTP services using `curl`
- Troubleshooting Docker daemon permissions
- Troubleshooting Python package installation on Ubuntu

Most importantly, I went through the complete process:

```text
Write Application
       |
       v
Test Application
       |
       v
Create Dockerfile
       |
       v
Build Docker Image
       |
       v
Create Container
       |
       v
Publish Port 5000
       |
       v
Test Application
       |
       v
Hello, world!
```

## Result

I successfully built my first custom Docker image and deployed my first containerised Flask application.

The final container was running successfully and returned:

```text
Hello, world!
```

when accessed through port `5000`.