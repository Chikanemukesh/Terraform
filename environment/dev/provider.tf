terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.12.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "skdmp"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "skdmpstg"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "azcontainere"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "tf/terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
  subscription_id = "41f6bdb1-3632-4ed7-8d47-0f6cc9b855f7"

}