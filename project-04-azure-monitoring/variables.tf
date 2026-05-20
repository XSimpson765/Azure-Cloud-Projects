variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "rg-project-04"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Admin username for the Linux VM"
  type        = string
  default     = "azureuser"
}

variable "alert_email" {
  description = "Email address for Azure Monitor alerts"
  type        = string
  default     = "simpson.xavier2423@gmail.com"
}