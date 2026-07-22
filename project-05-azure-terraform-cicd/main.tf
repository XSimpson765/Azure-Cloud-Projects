resource "azurerm_resource_group" "cicd" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "dev"
    project     = "azure-terraform-cicd"
    managed_by  = "terraform"
  }
}