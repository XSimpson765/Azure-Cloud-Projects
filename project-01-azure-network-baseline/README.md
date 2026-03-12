# Project 01 – Azure Network Baseline (Terraform)

This project provisions a **foundational Azure network environment** using **Terraform**.

It was built as the Azure equivalent of an AWS VPC baseline project and demonstrates how to deploy core networking resources in Azure using Infrastructure as Code.

---

# What This Project Deploys

- Azure Resource Group  
- Virtual Network (VNet)  
- Subnet  
- Network Security Group (NSG)  
- Inbound SSH Rule (Port 22)  
- Public IP Address  

Note: A Linux VM and NIC were originally planned for this project, but due to repeated Azure VM SKU capacity restrictions during deployment, this version was finalized as a **network-only baseline**.

---

# Architecture

```
Resource Group
   │
   ├── Virtual Network (VNet)
   │      └── Subnet
   │
   ├── Network Security Group (NSG)
   │      └── Allow SSH Rule
   │
   └── Public IP
```

---

# Purpose

The goal of this project was to build a reusable Azure network foundation while gaining hands-on experience with:

- Azure networking concepts
- Terraform configuration structure
- Azure CLI authentication
- GitHub Codespaces as a cloud lab environment
- Multi-cloud infrastructure skills

This project also helps reinforce the Azure equivalents of familiar AWS services.

---

# Azure vs AWS Service Mapping

| AWS | Azure |
|-----|------|
| VPC | Virtual Network (VNet) |
| Subnet | Subnet |
| Security Group | Network Security Group (NSG) |
| Elastic IP | Public IP |
| EC2 | Virtual Machine |

---

# Files Included

- `provider.tf` – Terraform version and Azure provider configuration  
- `variables.tf` – input variable definitions  
- `main.tf` – core Azure infrastructure resources  
- `outputs.tf` – Terraform outputs  
- `terraform.tfvars` – project-specific values  

---

# Deployment Steps

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Preview the deployment

```bash
terraform plan
```

### 3. Apply the configuration

```bash
terraform apply -auto-approve
```

---

# Example Outputs

After deployment, Terraform returns outputs similar to:

```
resource_group_name = "rg-project01-azure-baseline"
vnet_name           = "vnet-project01"
subnet_name         = "subnet-project01"
public_ip_address   = "20.29.88.81"
```

---

# Challenges Encountered

During development, Azure repeatedly rejected multiple VM sizes across several regions due to **SKU capacity restrictions**. Because of that, the virtual machine portion was commented out and the project was completed as a stable **network baseline** instead.

This still reflects a realistic cloud engineering workflow: troubleshoot, adapt, and deploy a working baseline rather than forcing an unreliable configuration.

---

# Skills Demonstrated

- Terraform
- Microsoft Azure
- Azure Virtual Network (VNet)
- Azure Subnet
- Azure Network Security Groups
- Public IP configuration
- Infrastructure as Code (IaC)
- GitHub Codespaces
- Azure CLI

---

# Cleanup

To avoid ongoing charges, destroy all deployed resources when finished:

```bash
terraform destroy -auto-approve
```

---

# Next Improvement

A future version of this project can extend the network baseline by attaching:

- Network Interface
- Linux Virtual Machine
- SSH access validation

Once Azure VM SKU availability is confirmed in the target region, this project can be expanded into a full compute + network deployment.