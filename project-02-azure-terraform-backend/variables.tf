variable "resource_group_name" {
  description = "Azure Resource Group name for the Terraform backend"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique Azure Storage Account name"
  type        = string
}

variable "container_name" {
  description = "Blob container name for Terraform state"
  type        = string
}