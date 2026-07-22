# Project 05 – Azure Terraform CI/CD Pipeline

## Overview

This project demonstrates an automated Infrastructure as Code (IaC) deployment pipeline for Microsoft Azure using Terraform and GitHub Actions.

The pipeline validates Terraform configuration, authenticates securely to Azure using OpenID Connect (OIDC), generates a Terraform execution plan, and automatically deploys infrastructure when changes are pushed to the `main` branch.

The project deploys an Azure Resource Group named:

`rg-terraform-cicd`

## Architecture

```text
Developer
    |
    | git push
    v
GitHub Repository
    |
    v
GitHub Actions
    |
    | OIDC Authentication
    v
Microsoft Entra ID
    |
    v
Terraform
    |
    v
Microsoft Azure
    |
    v
Resource Group
rg-terraform-cicd
```

## CI/CD Workflow

The GitHub Actions pipeline performs the following steps:

1. Checks out the repository.
2. Installs Terraform.
3. Authenticates to Azure using OIDC.
4. Runs `terraform fmt -check`.
5. Runs `terraform init`.
6. Runs `terraform validate`.
7. Runs `terraform plan`.
8. Runs `terraform apply -auto-approve` on pushes to the `main` branch.

Pull requests can run validation and planning without automatically deploying infrastructure.

## Technologies Used

- Microsoft Azure
- Terraform
- GitHub Actions
- Microsoft Entra ID
- OpenID Connect (OIDC)
- Azure CLI
- Azure RBAC
- Git / GitHub

## Security

This project uses GitHub Actions OIDC authentication instead of storing a long-lived Azure client secret.

A Microsoft Entra application and service principal were configured with a federated identity credential that trusts GitHub Actions originating from the `main` branch of this repository.

The GitHub workflow receives temporary authentication tokens and uses Azure RBAC to authorize Terraform operations.

For this lab, the service principal was assigned the `Contributor` role. In a production environment, permissions should be scoped according to the principle of least privilege.

## Terraform Resources

The Terraform configuration currently deploys:

- Azure Resource Group
  - Name: `rg-terraform-cicd`
  - Region: `East US`
  - Managed through Terraform and GitHub Actions

## Repository Structure

```text
project-05-azure-terraform-cicd/
├── main.tf
├── outputs.tf
├── providers.tf
├── variables.tf
└── README.md

.github/
└── workflows/
    └── azure-terraform-cicd.yml
```

## GitHub Actions Variables

The workflow uses the following GitHub repository variables:

```text
AZURE_CLIENT_ID
AZURE_TENANT_ID
AZURE_SUBSCRIPTION_ID
```

These values allow the workflow to identify the Azure application, tenant, and subscription while OIDC handles authentication without a stored client secret.

## Skills Demonstrated

This project demonstrates hands-on experience with:

- Infrastructure as Code using Terraform
- Azure resource deployment
- CI/CD pipeline development
- GitHub Actions
- Microsoft Entra workload identities
- OIDC workload identity federation
- Azure Role-Based Access Control (RBAC)
- Automated Terraform validation and planning
- Automated infrastructure deployment
- Git-based infrastructure workflows

## Result

The completed pipeline successfully authenticates GitHub Actions to Azure through OIDC and automatically deploys the Terraform-managed Azure Resource Group when changes are pushed to the `main` branch.

This provides a repeatable and automated Azure infrastructure deployment workflow without requiring long-lived cloud credentials.