resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "random_id" "this" {
  byte_length = 22
}

locals {
  storage_account_name       = length(var.storage_account_name)
  max_length                 = 24
  random_suffix              = substr(random_id.this.dec, 0, local.max_length - local.storage_account_name)
  final_storage_account_name = "${var.storage_account_name}${local.random_suffix}"
}

resource "azurerm_storage_account" "this" {
  name                     = local.final_storage_account_name
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.account_tier
  account_kind             = var.account_kind
  account_replication_type = var.account_replication_type


  tags = var.tags
}

resource "azurerm_storage_account_static_website" "this" {
  storage_account_id = azurerm_storage_account.this.id
  error_404_document = var.error_404_document
  index_document     = var.index_document
}
