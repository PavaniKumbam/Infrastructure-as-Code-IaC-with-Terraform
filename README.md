# 🏗 Infrastructure as Code (IaC) with Terraform

This repository demonstrates provisioning a Docker container using **Terraform** as Infrastructure as Code (IaC).  

---

##  🚀  Prerequisites

- Ubuntu or Linux-based VM
- Terraform installed
- Docker installed
- Git installed

---

## 🗂 Repository Structure

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
## Steps to Run

### 1️⃣ Initialize Terraform

terraform init

Sample Output:

```
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/docker versions matching "~> 2.0"...
- Installing hashicorp/docker v2.16.0...
Terraform has been successfully initialized!

```

2️⃣ Plan Terraform Changes

terraform plan -out=tfplan


Sample Output:
```
docker_image.nginx: Refreshing state... [id=sha256:41...]
docker_container.nginx: Refreshing state... [id=ed7c3bd96f2b...]
Plan: 1 to add, 0 to change, 0 to destroy.
```

3️⃣ Apply Terraform Plan
terraform apply tfplan

Sample Output:

```
docker_container.nginx: Creating...
docker_container.nginx: Creation complete after 2s [id=ed7c3bd96f2b...]
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

4️⃣ Verify Docker Container

docker ps

Sample Output:

```
CONTAINER ID   IMAGE     COMMAND                  STATUS         PORTS   NAMES
ed7c3bd96f2b   nginx     "/docker-entrypoint.…"   Up 5 seconds           nginx
```
5️⃣ Destroy Terraform-managed Infrastructure

terraform destroy

Sample Output:

```
docker_container.nginx: Destroying...
docker_container.nginx: Destruction complete after 1s
Destroy complete! Resources: 1 destroyed.
```



## Use of Terraform + Docker setup

``` 

Learn Infrastructure as Code (IaC):

Instead of manually running docker run commands, you describe infrastructure (like Docker images & containers) in Terraform code (main.tf).

This makes your setup repeatable, version-controlled, and automated.

Automation of Container Deployment:

With a single command (terraform apply), Terraform pulls the nginx image and runs it inside a Docker container.

No need to manually type multiple Docker commands.

Consistency & Reproducibility:

Anyone who clones your repo can run the same Terraform commands and get the exact same environment.

This reduces human errors.

Real-World DevOps Practice:

This task is a mini real-world project where you combine Terraform (IaC) + Docker (containerization).

These two tools are widely used in DevOps for automating environments.

Easy Teardown:

Normally, cleaning up containers is manual (docker stop, docker rm).

With Terraform, you just run terraform destroy and it removes everything cleanly.

✅ In short:
This task teaches you how to provision, manage, and destroy infrastructure automatically using Terraform.
It’s a foundation step towards handling larger infrastructures like Kubernetes clusters or Cloud resources (AWS, Azure, GCP) using IaC.


```
