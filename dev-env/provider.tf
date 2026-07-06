terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

#   backend "azurerm" {
#     resource_group_name  = "rg-backend"
#     storage_account_name = "strg_backend_11111"
#     container_name       = "tfstate"
#     key                  = "dev.terraform.tfstate"
#   }
}

provider "azurerm" {
  features {
  }
}
