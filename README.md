# Infrastructure as Code (IaC) with Terraform

This repository demonstrates provisioning a Docker container using **Terraform** as Infrastructure as Code (IaC).  

---

## Prerequisites

- Ubuntu or Linux-based VM
- Terraform installed
- Docker installed
- Git installed

---

## Repository Structure

terraform-docker/
├── main.tf # Terraform configuration file
├── terraform.tfstate # Terraform state file
├── terraform.tfstate.backup # Terraform backup state
├── tfplan # Terraform plan output
├── terraform-init.log # Init command log
├── terraform-plan.log # Plan command log
├── terraform-apply.log # Apply command log
├── terraform-destroy.log # Destroy command log
└── Infrastructure-as-Code-IaC-with-Terraform/ # Sample cloned repo directory

yaml
Copy code

---

## Steps to Run

### 1. Initialize Terraform
```bash
terraform init
Sample Output:

bash
Copy code
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/docker versions matching "~> 2.0"...
- Installing hashicorp/docker v2.16.0...
Terraform has been successfully initialized!
2. Plan Terraform Changes
bash
Copy code
terraform plan -out=tfplan
Sample Output:

vbnet
Copy code
docker_image.nginx: Refreshing state... [id=sha256:41...]
docker_container.nginx: Refreshing state... [id=ed7c3bd96f2b...]
Plan: 1 to add, 0 to change, 0 to destroy.
3. Apply Terraform Plan
bash
Copy code
terraform apply tfplan
Sample Output:

yaml
Copy code
docker_container.nginx: Creating...
docker_container.nginx: Creation complete after 2s [id=ed7c3bd96f2b...]
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
4. Verify Docker Container
bash
Copy code
docker ps
Sample Output:

mathematica
Copy code
CONTAINER ID   IMAGE     COMMAND                  STATUS         PORTS   NAMES
ed7c3bd96f2b   nginx     "/docker-entrypoint.…"   Up 5 seconds           nginx
5. Destroy Terraform-managed Infrastructure
bash
Copy code
terraform destroy
Sample Output:

yaml
Copy code
docker_container.nginx: Destroying...
docker_container.nginx: Destruction complete after 1s
Destroy complete! Resources: 1 destroyed.
