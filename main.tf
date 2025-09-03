terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
  backend "azurerm" {
    storage_account_name  = "hcl9999999"
    container_name        = "hclcontainer"
    resource_group_name   = "RG1"
    key                   = "dev-cp.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-c" {
  name     = "cpg-rg"
  location = "West Europe"
}


