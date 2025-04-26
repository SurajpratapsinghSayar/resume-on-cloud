module "storage_account" {
  source = "./modules/storage-account"

  resource_group_name      = var.resource_group_name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_kind             = var.account_kind
  account_replication_type = var.account_replication_type
  tags                     = var.tags

  error_404_document = var.error_404_document
  index_document     = var.index_document

}
