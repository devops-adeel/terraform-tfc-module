data "tfe_organization_membership" "default" {
  organization = "hc-implementation-services"
  email        = var.email
}

resource "tfe_workspace" "default" {
  name                 = var.application_name
  organization         = data.tfe_organization_membership.default.id
  allow_destroy_plan   = true
  execution_mode       = "remote"
  file_trigger_enabled = false
}

resource "tfe_variable" "vault_addr" {
  key          = "VAULT_ADDR"
  value        = var.vault_address
  category     = "env"
  workspace_id = tfe_workspace.default.id
  description  = "Vault Address URL"
  sensitive    = true
}

resource "tfe_variable" "approle_id" {
  key          = "approle_id"
  value        = var.vault_approle_id
  category     = "terraform"
  workspace_id = tfe_workspace.default.id
  description  = "Vault Approle ID"
  sensitive    = true
}

resource "tfe_variable" "approle_secret" {
  key          = "approle_secret"
  value        = var.vault_approle_secret
  category     = "terraform"
  workspace_id = tfe_workspace.default.id
  description  = "Vault Approle ID"
  sensitive    = true
}

resource "tfe_variable" "vault_token_name" {
  key          = "VAULT_TOKEN_NAME"
  value        = var.application_name
  category     = "env"
  workspace_id = tfe_workspace.default.id
  description  = "Vault Token Name"
}

resource "tfe_variable" "vault_namespace" {
  key          = "VAULT_NAMESPACE"
  value        = var.application_name
  category     = "env"
  workspace_id = tfe_workspace.default.id
  description  = "Vault Namespace"
}
