resource "azurerm_resource_group" "rg-c" {
  name     = "cpg-rg"
  location = "West Europe"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
backend "azurerm"  {
storage_account_name= "hcl9999999"
container_name= "hclcontainer"
resource_group_name = "RG1"
key = "dev-cp.tfstate"
}

}

provider "azurerm" {
  features {}

  client_id       = env("ARM_CLIENT_ID")
  client_secret   = env("ARM_CLIENT_SECRET")
  subscription_id = env("ARM_SUBSCRIPTION_ID")
  tenant_id       = env("ARM_TENANT_ID")
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-from-gh-actions"
  location = "East US"
}

