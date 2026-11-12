output "vnet_id" {
  description = "Identifiant du VNet"
  value       = azurerm_virtual_network.main.id
}

output "app_subnet_id" {
  description = "Identifiant du sous-réseau application"
  value       = azurerm_subnet.app.id
}

output "data_subnet_id" {
  description = "Identifiant du sous-réseau données"
  value       = azurerm_subnet.data.id
}
