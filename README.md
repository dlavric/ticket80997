# ticket80997

This repository has been created to test the version 2.26.1 of the Azuread Terraform provider 

## Instructions

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/ticket80997.git
```

- Go to the directory where the repo is stored and make sure the `main.tf` file is there too:
```shell
cd ticket80997
```

- Login into Azure CLI
```shell
az login
```

- Run `terraform init`, to download any external dependencies
```shell
terraform init
```

- Run `terraform apply` to create the resources
```shell
terraform apply

data.azuread_client_config.current: Reading...
data.azuread_client_config.current: Read complete after 0s [id=0e3e2e88-8caf-41ca-b4da-e3b33b6c52ec-04b07795-8ddb-461a-bbee-02f9e1bf7b46-0c60aa27-97e8-4a56-8f08-e1d7aa85ebc1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azuread_application.example will be created
  + resource "azuread_application" "example" {
      + app_role_ids                = (known after apply)
      + application_id              = (known after apply)
      + disabled_by_microsoft       = (known after apply)
      + display_name                = "example"
      + id                          = (known after apply)
      + logo_url                    = (known after apply)
      + oauth2_permission_scope_ids = (known after apply)
      + object_id                   = (known after apply)
      + owners                      = [
          + "0c60aa27-97e8-4a56-8f08-e1d7aa85ebc1",
        ]
      + prevent_duplicate_names     = false
      + publisher_domain            = (known after apply)
      + sign_in_audience            = "AzureADMyOrg"
      + tags                        = (known after apply)
      + template_id                 = (known after apply)

      + feature_tags {
          + custom_single_sign_on = (known after apply)
          + enterprise            = (known after apply)
          + gallery               = (known after apply)
          + hide                  = (known after apply)
        }
    }

  # azuread_service_principal.example will be created
  + resource "azuread_service_principal" "example" {
      + account_enabled              = true
      + app_role_assignment_required = false
      + app_role_ids                 = (known after apply)
      + app_roles                    = (known after apply)
      + application_id               = (known after apply)
      + application_tenant_id        = (known after apply)
      + display_name                 = (known after apply)
      + homepage_url                 = (known after apply)
      + id                           = (known after apply)
      + logout_url                   = (known after apply)
      + oauth2_permission_scope_ids  = (known after apply)
      + oauth2_permission_scopes     = (known after apply)
      + object_id                    = (known after apply)
      + owners                       = [
          + "0c60aa27-97e8-4a56-8f08-e1d7aa85ebc1",
        ]
      + redirect_uris                = (known after apply)
      + saml_metadata_url            = (known after apply)
      + service_principal_names      = (known after apply)
      + sign_in_audience             = (known after apply)
      + tags                         = (known after apply)
      + type                         = (known after apply)

      + feature_tags {
          + custom_single_sign_on = (known after apply)
          + enterprise            = (known after apply)
          + gallery               = (known after apply)
          + hide                  = (known after apply)
        }

      + features {
          + custom_single_sign_on_app = (known after apply)
          + enterprise_application    = (known after apply)
          + gallery_application       = (known after apply)
          + visible_to_users          = (known after apply)
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

azuread_application.example: Creating...
azuread_application.example: Creation complete after 4s [id=90c38abc-0c75-4d0b-8df4-1616c96598be]
azuread_service_principal.example: Creating...
azuread_service_principal.example: Creation complete after 4s [id=3e6b016c-4fac-4d29-ba44-ee05e898fb79]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```

**NOTE: The test has been performed on the following Terraform version and the corresponding azuread provider**:
```
Terraform v1.2.7
on darwin_amd64
+ provider registry.terraform.io/hashicorp/azuread v2.26.1
```

## Reference Documentation
- [Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli) 
- [AzureAd Service Principal](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal)