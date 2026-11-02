FROM python:3.12-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Install available security updates for the base image
RUN apt-get update \
	&& apt-get upgrade -y --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container at /app
COPY . /app

# Run python script when the container launches
CMD ["python", "hello.py"] 