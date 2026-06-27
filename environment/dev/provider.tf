terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.76.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "terraform-backend-dev"
    storage_account_name = "tfstateprod3a7c5b"  # <- use module output
    container_name       = "devcontainer"
    key                  = "envs/dev/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c7be5bf9-0483-4584-ae95-5933ca0ed3f3"
}