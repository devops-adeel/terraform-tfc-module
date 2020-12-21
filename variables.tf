variable "email" {
  description = "Email address of TFC user"
  type        = string
}

variable "application_name" {
  description = "Name of the application/customer"
  type        = string
}

variable "vault_address" {
  description = "Vault Address URL"
  type        = string
}

variable "vault_approle_id" {
  description = "Vault Approle ID"
  type        = string
}

variable "vault_approle_secret" {
  description = "Vault Approle Secret ID"
  type        = string
}
