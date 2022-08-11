terraform {
  required_providers {
    azuread = {
      source = "hashicorp/azuread"
      version = "2.26.1"
    }
  }
}

provider "azuread" {
  # Configuration options
}

data "azuread_client_config" "current" {}

resource "azuread_application" "example" {
  display_name = "example"
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "example" {
  application_id               = azuread_application.example.application_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]
}