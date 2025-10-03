terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name   = "rg-terraform-state"
    storage_account_name  = "stterraformstate001"
    container_name        = "tfstate"
    key                   = "lab.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.70"
    }
  }
}

provider "azurerm" {
  features {}
}

