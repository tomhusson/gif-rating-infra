output "resource_group_name" {
  description = "Nom du groupe de ressources principal"
  value       = azurerm_resource_group.main.name
}

output "storage_account_name" {
  description = "Nom du compte de stockage des GIFs"
  value       = module.storage.storage_account_name
}

output "blob_endpoint" {
  description = "URL du service Blob"
  value       = module.storage.blob_endpoint
}
