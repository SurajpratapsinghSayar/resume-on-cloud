output "storage_account_name" {
    description = "The name of the storage account."
    value       = module.storage_account.storage_account_name
}

output "storage_account_primary_web_endpoint" {
    description = "Use this primary web endpoint of the storage account."
    value       = module.storage_account.storage_account_primary_web_endpoint
}