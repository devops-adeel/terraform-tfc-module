![inspec-test](https://github.com/devops-adeel/terraform-tfc-module/actions/workflows/terraform-apply.yml/badge.svg)

# Terraform TFC Workspace

This terraform module creates a tfc workspace with pre-populated variables to
integrate with Vault.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Usage:

```hcl

module "terraform_workspace" {
  source               = "git::https://github.com/devops-adeel/terraform-tfc-module.git?ref = v0.1.0"
  entity_ids           = [module.vault_approle.entity_id]
  application_name     = local.application_name
  email                = local.email
  username             = local.username
  vault_address        = var.vault_address
  vault_approle_id     = module.vault_approle_admin.approle_id
  vault_approle_secret = module.vault_approle_admin.approle_secret
  vault_namespace      = trimsuffix(vault_namespace.default.id, "/")
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_team.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team_access.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_access) | resource |
| [tfe_team_member.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_member) | resource |
| [tfe_team_token.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_token) | resource |
| [tfe_variable.approle_id](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.approle_secret](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.vault_addr](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.vault_address](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.vault_namespace](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.vault_token_name](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_organization_membership.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization_membership) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Name of the application/customer | `string` | n/a | yes |
| <a name="input_email"></a> [email](#input\_email) | Email address of TFC user | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | TFC username | `string` | n/a | yes |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault Address URL | `string` | n/a | yes |
| <a name="input_vault_approle_id"></a> [vault\_approle\_id](#input\_vault\_approle\_id) | Vault Approle ID | `string` | n/a | yes |
| <a name="input_vault_approle_secret"></a> [vault\_approle\_secret](#input\_vault\_approle\_secret) | Vault Approle Secret ID | `string` | n/a | yes |
| <a name="input_vault_namespace"></a> [vault\_namespace](#input\_vault\_namespace) | Vault namespace to add as TFC variable | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfc_team_id"></a> [tfc\_team\_id](#output\_tfc\_team\_id) | Terraform Cloud Team ID |
| <a name="output_tfc_token"></a> [tfc\_token](#output\_tfc\_token) | TFC token to be used by GH Actions |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | TFC workspace ID |
| <a name="output_workspace_name"></a> [workspace\_name](#output\_workspace\_name) | TFC workspace name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
