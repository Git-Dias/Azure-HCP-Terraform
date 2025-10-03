terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
}

backend "azurerm" {
    resource_group_name  = "RG-REMOTE-STATE"
    storage_account_name = "storemotestate01"
    container_name       = "remote-state"
    key                  = "lab-env/terraform.tfstate"
  }
}

provider "azurerm" {
  # Configuration options
}

