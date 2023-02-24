# ITI-Graduation-Project-IaC
![MicrosoftTeams-image (2)](https://user-images.githubusercontent.com/115899971/220382937-cd1c5a4a-c48f-455c-ba0d-ccefeea6e715.png)
![MicrosoftTeams-image](https://user-images.githubusercontent.com/115899971/220382949-035c226f-86df-4801-9ae8-4e6cc726cb59.png)

This project is deploying a backend application on kubernetes kluster (AWS EKS) using CI/CD pipeline 

Tools used in this project:

Terraform to deploy the infrastructure as code

AWS to create the needed resources

Docker to containerize the application

Jenkines to create the CI/CD pipeline

terraform init

terraform apply

connect to the ec2 via ssh

copy the jenkins files and deploy them on the cluster 

get the jenkins url by running:

kubectl get all po -n devops-tool
