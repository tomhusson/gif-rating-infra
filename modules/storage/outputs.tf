output "storage_account_id" {
  description = "Identifiant du compte de stockage"
  value       = azurerm_storage_account.main.id
}

output "storage_account_name" {
  description = "Nom du compte de stockage"
  value       = azurerm_storage_account.main.name
}

output "blob_endpoint" {
  description = "URL du service Blob"
  value       = azurerm_storage_account.main.primary_blob_endpoint
}

output "table_endpoint" {
  description = "URL du service Table"
  value       = azurerm_storage_account.main.primary_table_endpoint
}

output "gifs_container_name" {
  description = "Nom du conteneur des GIFs"
  value       = azurerm_storage_container.gifs.name
}
