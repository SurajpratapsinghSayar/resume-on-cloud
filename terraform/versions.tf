terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.69.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
  backend "local" {
    path = "tfstate/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

provider "random" {}
