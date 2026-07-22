output "resource_group_name" {
  description = "Name of the deployed Resource Group"
  value       = azurerm_resource_group.cicd.name
}

output "resource_group_id" {
  description = "Resource ID of the deployed Resource Group"
  value       = azurerm_resource_group.cicd.id
}