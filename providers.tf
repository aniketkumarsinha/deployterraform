terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "`> 4.14.0"
    }
  }
  required_version = "1.1.9"

  backend "azurerm" {
    resource_group_name  = "tfremotebackend"
    storage_account_name = "tfremotebackendstg"
    container_name       = "terraform"
    key                  = "terraform.tfstate"    
  }
}

provider "azurerm" {
  features {}  
}
