output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.main.name
}

output "virtual_machine_name" {
  value = azurerm_linux_virtual_machine.main.name
}

output "cpu_alert_name" {
  value = azurerm_monitor_metric_alert.vm_cpu_alert.name
}