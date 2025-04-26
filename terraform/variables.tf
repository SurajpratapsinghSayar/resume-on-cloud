# Varibles for the Azure Storage Account module

variable "resource_group_name" {
  description = "Name of the resource group where the storage account will be created."
  type        = string
}

variable "location" {
  description = "Location where the storage account will be created."
  type        = string
  default     = "East US 2"
}


variable "storage_account_name" {
  description = "Name of the storage account."
  type        = string
  default     = "mystorageaccount-"
}

variable "account_tier" {
  description = "The performance tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_kind" {
  description = "The kind of storage account."
  type        = string
  default     = "StorageV2" 
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags to be applied to the storage account."
  type        = map(string)
  default     = {
    environment = "staging"
  }
}

variable "error_404_document" {
  description = "The name of the 404 error document."
  type        = string
  default     = "custom_not_found.html"  
}

variable "index_document" {
  description = "The name of the index document."
  type        = string
  default     = "index.html"
}

