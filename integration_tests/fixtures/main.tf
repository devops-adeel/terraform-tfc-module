locals {
  application_name = "terraform-modules-development-tfc"
  env              = "dev"
  service          = "adeel"
}

module "default" {
  source               = "./module"
  application_name     = local.application_name
  email                = local.email
  username             = local.username
  vault_address        = var.vault_address
  vault_approle_id     = module.vault_approle_admin.approle_id
  vault_approle_secret = module.vault_approle_admin.approle_secret
  vault_namespace      = trimsuffix(vault_namespace.default.id, "/")
}

resource "vault_namespace" "default" {
  path = var.application_name
}

provider "vault" {
  alias     = "default"
  namespace = trimsuffix(vault_namespace.default.id, "/")
}

resource "vault_auth_backend" "default" {
  provider = vault.default
  type     = "approle"
  tune {
    max_lease_ttl     = "8760h"
    default_lease_ttl = "8760h"
  }
}

module "vault_approle" {
  source           = "git::https://github.com/devops-adeel/terraform-vault-approle.git?ref=v0.6.1"
  application_name = local.application_name
  env              = local.env
  service          = local.service
  mount_accessor   = data.vault_auth_backend.default.accessor
}
