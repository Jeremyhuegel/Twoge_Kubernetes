# **Twoge**

🚀 Twoge Kubernetes Deployment Guide
This guide outlines the steps to containerize and deploy the Twoge application and a MySQL database using Docker, Kubernetes, and supporting configuration files.

📦 Step 1: Containerization

Create a Dockerfile to build the Twoge application image.

Push the image to Docker Hub for accessibility within Kubernetes.

Optionally, use a docker-compose.yml file to help run multiple containers locally for development and testing.

☸️ Step 2: Twoge Kubernetes Configuration

Create the Twoge Deployment manifest (deployment.yml).

Create the Twoge Service manifest (service.yml) to expose the application.

🛢 Step 3: MySQL Kubernetes Configuration

Create the MySQL Deployment manifest (mysql-deployment.yml).

Create the MySQL Service manifest (mysql-service.yml) for internal communication.

⚙️ Step 4: ConfigMap

Define a config-map.yml file to store non-sensitive configuration data (e.g., DB host, port).

🔐 Step 5: Secrets & Environment Variables

Create a secrets.yml file to securely store sensitive data (e.g., DB username and password).

Use a .env file locally to manage environment variables for development.

🛠 Step 6: Deployment Scripts

deploy.sh: Script to deploy all services and configuration to your Kubernetes cluster.

teardown.sh: Script to delete all Kubernetes resources created by this deployment.

🧠 Step 7: Application Configuration

Modify app.py to dynamically read from environment variables defined in the ConfigMap and Secrets.


![Image](https://github.com/user-attachments/assets/c2cd71b9-4023-4eac-aa62-5333808045b0)
