# Terraform Block
terraform {
   required_version = ">= 1.1.0"
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
       subscription_id = "a0e0289b-172a-4126-a6aa-d49274528a28"
       client_id       = "33aaa935-be73-441c-800e-03710bcee72c"
       client_secret   = "DXvbHp178UchaK5G.ytSM_RH_9BOyX4k9t"
       tenant_id       = "12709065-6e6c-41c9-9e4d-fb0a436969ce"  
  features {}
}

# Random String Resource

resource "random_string" "abinrandom" {
  length  = 6
  upper   = false
  special = false
  number  = false
}



