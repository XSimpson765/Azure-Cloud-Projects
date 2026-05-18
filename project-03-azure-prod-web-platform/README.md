# Project 03 – Azure Production Web Platform

## Overview

This project deploys a production-style Azure web platform using Terraform Infrastructure-as-Code (IaC). The environment includes a Virtual Network (VNet), public and private subnets, Network Security Groups (NSGs), an Azure Load Balancer, and a Linux Virtual Machine Scale Set (VMSS) running NGINX web servers.

The goal of this project was to simulate a scalable cloud infrastructure environment similar to production web application deployments commonly used in enterprise cloud engineering environments.

---

# Technologies Used

- Microsoft Azure
- Terraform
- Azure Virtual Network (VNet)
- Azure Load Balancer
- Azure VM Scale Set (VMSS)
- Network Security Groups (NSGs)
- Ubuntu Linux
- NGINX
- SSH Keys
- GitHub Codespaces

---

# Architecture

```text
Internet
   ↓
Azure Load Balancer
   ↓
Backend Pool
   ↓
VM Scale Set (2 Ubuntu Linux VMs)
   ↓
NGINX Web Servers
```

---

# AWS Equivalent Architecture

This project mirrors the following AWS-style architecture:

```text
Internet
   ↓
Application/Network Load Balancer
   ↓
Target Group
   ↓
Auto Scaling Group
   ↓
EC2 Instances
```

---

# Features

- Infrastructure deployed using Terraform
- Azure Resource Group organization
- Custom VNet and subnet configuration
- Public and private subnet architecture
- Network Security Group firewall rules
- Azure Load Balancer with health probe
- Backend address pool configuration
- VM Scale Set deployment
- Automatic NGINX installation using cloud-init/custom_data
- SSH key authentication
- Scalable compute infrastructure

---

# Terraform Resources Deployed

## Networking
- Azure Virtual Network
- Public Subnet
- Private Subnet
- Network Security Group
- NSG Association

## Load Balancing
- Public IP Address
- Azure Load Balancer
- Backend Address Pool
- Health Probe
- Load Balancer Rule

## Compute
- Linux Virtual Machine Scale Set
- Ubuntu 22.04 LTS instances
- NGINX web server installation

---

# Security Configuration

- Password authentication disabled
- SSH key authentication enabled
- HTTP traffic restricted through NSG rules
- Load-balanced frontend architecture
- Health probe validation for backend instances

---

# VM Bootstrap Automation

The VM Scale Set uses Terraform `custom_data` to automatically:

- update packages
- install NGINX
- configure a web page
- start and enable the NGINX service

Example startup script:

```bash
#!/bin/bash

apt-get update -y
apt-get install nginx -y

echo "<h1>Azure Project 03 - Production Web Platform</h1>" > /var/www/html/index.html

systemctl enable nginx
systemctl start nginx
```

---

# Validation

Infrastructure deployment was validated by:

- successful Terraform apply
- healthy VM Scale Set deployment
- successful load balancer provisioning
- HTTP response testing using curl

Example validation:

```bash
curl http://<LOAD_BALANCER_PUBLIC_IP>
```

Output:

```html
<h1>Azure Project 03 - Production Web Platform</h1>
```

---

# Lessons Learned

- Azure VM SKU availability can vary by region
- Terraform integrates directly with Azure CLI authentication
- VM Scale Sets provide Azure's equivalent of AWS Auto Scaling Groups
- Azure Load Balancer architecture closely maps to AWS ALB/NLB concepts
- cloud-init/custom_data simplifies automated Linux server provisioning

---

# Future Improvements

- HTTPS/TLS with Azure Application Gateway
- Azure Monitor alerts and dashboards
- Autoscaling policies
- Bastion/private-only VM access
- GitHub Actions CI/CD pipeline
- Web Application Firewall (WAF)
- Custom domain integration
- Azure Key Vault integration
- Containerized deployment with AKS

---

# Cleanup

To destroy all deployed infrastructure:

```bash
terraform destroy -auto-approve
```

---

# Author

Xavier Simpson

Cloud-focused IT professional building production-style AWS and Azure infrastructure projects using Terraform, cloud networking, Linux administration, CI/CD pipelines, and scalable cloud architecture.