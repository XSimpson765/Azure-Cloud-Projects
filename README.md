# Azure Cloud Projects – Terraform Infrastructure Portfolio

This repository contains **hands-on Azure cloud engineering projects** built with **Terraform** to demonstrate real-world Infrastructure as Code (IaC) practices.

The goal of this repository is to showcase practical Azure cloud skills including:

* Infrastructure as Code
* Terraform provisioning
* Azure networking
* Remote Terraform state management
* Cloud architecture design
* Multi-cloud engineering workflows

These projects mirror common production tasks performed by **Cloud Engineers, DevOps Engineers, and Platform Engineers**.

---

# Repository Structure

```
Azure-Cloud-Projects
│
├── project-01-azure-network-baseline
│
└── project-02-azure-terraform-backend
```

Each project demonstrates a **specific cloud engineering concept**.

---

# Project 01 – Azure Network Baseline

This project deploys a **foundational Azure network environment** using Terraform.

## Infrastructure Created

* Azure Resource Group
* Virtual Network (VNet)
* Subnet
* Network Security Group (NSG)
* Public IP Address

These components form the **baseline network architecture used in most Azure deployments**.

## Architecture

```
Resource Group
      │
      └── Virtual Network
              │
              └── Subnet
                     │
                     └── Network Security Group
                             │
                             └── Public IP
```

## Skills Demonstrated

* Azure networking fundamentals
* Terraform infrastructure provisioning
* Azure Resource Manager integration
* Network security configuration
* Infrastructure as Code workflows

## Future Improvements

Future versions of this project may extend the network baseline by attaching:

* Network Interface
* Linux Virtual Machine
* SSH connectivity validation

---

# Project 02 – Terraform Remote Backend (Azure)

This project provisions an **Azure Storage backend for Terraform state management**.

Instead of storing Terraform state locally, the infrastructure required to store state remotely is deployed using Terraform itself.

This is considered **best practice in production environments**.

## Infrastructure Created

* Azure Resource Group
* Azure Storage Account
* Azure Blob Container

## Architecture

```
Resource Group
   │
   └── Storage Account
           │
           └── Blob Container
                   │
                   └── Terraform State File
```

## Purpose

Remote state storage enables:

* Team collaboration
* Centralized infrastructure tracking
* State locking
* Safer Terraform deployments

## Azure vs AWS Equivalent

| AWS                 | Azure              |
| ------------------- | ------------------ |
| S3 Bucket           | Storage Account    |
| S3 Object           | Blob               |
| S3 Bucket Folder    | Blob Container     |
| DynamoDB Lock Table | Blob state locking |

## Skills Demonstrated

* Terraform backend architecture
* Azure Storage provisioning
* Terraform remote state management
* Infrastructure as Code
* Cloud backend design

---

# Tools Used

* Terraform
* Azure CLI
* GitHub
* GitHub Codespaces
* Azure Resource Manager

---

# Deployment Workflow

Typical Terraform workflow used in these projects:

```
terraform init
terraform validate
terraform plan
terraform apply
```

To remove infrastructure:

```
terraform destroy
```

---

# Learning Goals

This repository is designed to demonstrate practical experience with:

* Azure infrastructure provisioning
* Terraform architecture
* Cloud networking
* Remote state management
* DevOps workflows
* Multi-cloud engineering

---

# Future Projects

Planned future projects include:

* Azure Key Vault deployment
* Azure Monitor and Log Analytics
* Container deployment with Azure Container Instances
* Secure private networking
* CI/CD automation for Terraform

---

# Author

Xavier Simpson

Cloud & Infrastructure Engineer (Aspiring)

GitHub:
https://github.com/XSimpson765