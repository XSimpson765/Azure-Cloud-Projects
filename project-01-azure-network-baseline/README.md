# Project 01 – Azure Network Baseline (Terraform)

This project provisions a **foundational Azure network environment** using **Terraform**.

It was built as the Azure equivalent of an AWS VPC baseline project and demonstrates how to deploy core networking resources in Azure using Infrastructure as Code.

---

# What This Project Deploys

- **Azure Resource Group**
- **Virtual Network (VNet)**
- **Subnet**
- **Network Security Group (NSG)**
- **Inbound SSH Rule (Port 22)**
- **Public IP Address**

> Note: A Linux VM and NIC were originally planned for this project, but due to repeated Azure VM SKU capacity restrictions during deployment, this version was finalized as a **network-only baseline**.

---

# Architecture

```text
Resource Group
   │
   ├── Virtual Network (VNet)
   │      └── Subnet
   │
   ├── Network Security Group (NSG)
   │      └── Allow SSH Rule
   │
   └── Public IP