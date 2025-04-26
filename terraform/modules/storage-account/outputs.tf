output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.this.name
}

output "storage_account_primary_web_endpoint" {
  description = "The primary web endpoint of the storage account."
  value       = azurerm_storage_account.this.primary_web_endpoint
}