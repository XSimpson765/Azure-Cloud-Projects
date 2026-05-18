output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "load_balancer_public_ip" {
  value = azurerm_public_ip.lb_ip.ip_address
}