# Project 02 – Azure Terraform Remote Backend

This project deploys an **Azure Storage backend for Terraform state management** using Infrastructure as Code.

Instead of storing Terraform state locally, this project provisions the infrastructure required to store state remotely in **Azure Blob Storage**, which is the recommended production practice.

---

# What This Project Deploys

- Azure Resource Group
- Azure Storage Account
- Azure Blob Container

These resources provide a **remote backend for Terraform state files**.

---

# Architecture

```
Resource Group
   │
   └── Storage Account
           │
           └── Blob Container
                   │
                   └── Terraform State
```

---

# Purpose

This project demonstrates:

- Terraform backend configuration
- Azure Storage Account provisioning
- Terraform remote state best practices
- Infrastructure as Code on Azure
- Multi-cloud Terraform workflows

---

# Azure vs AWS Equivalent

| AWS | Azure |
|----|----|
| S3 Bucket | Storage Account |
| S3 Object | Blob |
| S3 Bucket Folder | Blob Container |
| DynamoDB Lock Table | Blob state locking |

---

# Files Included

- `provider.tf` – Terraform configuration and backend
- `variables.tf` – variable definitions
- `main.tf` – Azure infrastructure resources
- `outputs.tf` – Terraform outputs
- `terraform.tfvars` – project configuration values

---

# Deployment Steps

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Preview infrastructure:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply -auto-approve
```

---

# Example Outputs

After deployment Terraform returns:

```
container_name      = "tfstate"
resource_group_name = "rg-project02-terraform-backend"
storage_account_name = "tfstatexsimpson765"
```

---

# Skills Demonstrated

- Terraform
- Azure Resource Manager
- Azure Storage Accounts
- Azure Blob Containers
- Terraform Remote State Architecture
- Infrastructure as Code
- Azure CLI
- Cloud backend management

---

# Cleanup

To remove all resources:

```bash
terraform destroy -auto-approve
```

---

# Real-World Relevance

Remote state storage is essential in production Terraform environments because it allows:

- team collaboration
- state locking
- centralized infrastructure tracking
- safer deployments

Azure Blob Storage is commonly used as the backend for Terraform in Azure-based environments.