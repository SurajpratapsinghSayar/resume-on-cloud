/*
 * This file contains the variables for the Terraform configuration.
 * It is used to set the values for the variables defined in main.tf.
 * The values here will be used to create the resources in Azure.
 */

# --- Storage Account Variables ---
resource_group_name      = "resume-portfolio-rg"
location                 = "East US 2"
storage_account_name     = "websiteportfolio"
account_tier             = "Standard"
account_kind             = "StorageV2"
account_replication_type = "LRS"
tags                     = {
  environment = "prod"
}
error_404_document       = "portfolio_not_found.html"
index_document           = "index.html"