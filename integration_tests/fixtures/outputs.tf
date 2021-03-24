output "token" {
  description = "Terraform workspace token"
  value       = module.default.tfc_token
}

output "url" {
  description = "Terraform Cloud URL"
  value       = "app.terraform.io"
}

output "workspace" {
  description = "TFC Workspace ID"
  value       = module.default.workspace_id
}

output "team_id" {
  description = "Terraform Cloud Team ID"
  value       = module.default.tfc_team_id
}
