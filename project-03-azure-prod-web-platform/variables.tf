variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "rg-project03-prod-web"
}

variable "vnet_name" {
  default = "project03-vnet"
}

variable "address_space" {
  default = ["10.0.0.0/16"]
}

variable "public_subnet" {
  default = "10.0.1.0/24"
}

variable "private_subnet" {
  default = "10.0.2.0/24"
}