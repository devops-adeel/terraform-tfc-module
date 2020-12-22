## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| `tfe` | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `application_name` | Name of the application/customer | `string` | n/a | yes |
| `email` | Email address of TFC user | `string` | n/a | yes |
| `username` | TFC username | `string` | n/a | yes |
| `vault_address` | Vault Address URL | `string` | n/a | yes |
| `vault_approle_id` | Vault Approle ID | `string` | n/a | yes |
| `vault_approle_secret` | Vault Approle Secret ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| `workspace_id` | TFC workspace ID |
