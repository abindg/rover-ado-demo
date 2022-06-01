# Terraform Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

# Provider Block
provider "azurerm" {
  # subscription_id = var.subscriptionid
  #     client_id = var.client_id
  #     client_secret = var.clientsecret
  #     tenant_id = var.tenantid  
  features {}
}

# Random String Resource

resource "random_string" "abinrandom" {
  length  = 6
  upper   = false
  special = false
  number  = false
}



