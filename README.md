"# DevOpsAssignment" 

This repository contains files and instructions to set up a Kubernetes cluster using Minikube, configure AWS ECR, and set up a CI/CD pipeline for continuous deployment.
# Prerequisites
The following should be installed in your system to beign with.

- Docker
- Minikube
- kubectl
- AWS CLI
- Git
# Setup Instructions
Follow these steps to set up the Kubernetes cluster, configure AWS ECR, and set up the CI/CD pipeline:

# 1. Kubernetes cluster configuration:
The following commands should be used 

- minikube start
- kubectl apply -f cluster.yaml


# 2. Build and Push Docker Image to ECR
Steps to be followed:
Install AWS CLI on your local machine. check version: aws --version
Configure AWS CLI using the below command: aws configure
Create an AWS ECR repository
Read the Push commands
Get a dockerized application to push the docker image on AWS ECR.
Once the image is pushed to ECR it can viewed on AWS ECR.
You pushed a docker image on AWS ECR.

**Required commands:**
* Build Docker image:
  
" docker build -t my-app . "

* Tag the Docker image:
  
" docker tag my-app:latest <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/my-app:latest "

* Push Docker image to ECR:
  
" aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com
docker push <your-aws-account-id>.dkr.ecr.<your-region>.amazonaws.com/my-app:latest "

# 3. Apply Ingress Configuration

" kubectl apply -f ingress.yaml "
# 4. Set Up CI/CD Pipeline

Configure GitHub Actions with your AWS credentials.
Commit and push the publish.yaml file to the repository:


- git add pipeline.yaml
- git commit -m "Add CI/CD pipeline configuration
- git push origin main


**All the four process are created and configured**
