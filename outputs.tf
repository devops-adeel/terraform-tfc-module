output "workspace_id" {
  description = "TFC workspace ID"
  value       = tfe_workspace.default.id
}

output "workspace_name" {
  description = "TFC workspace name"
  value       = tfe_workspace.default.name
}

output "tfc_token" {
  description = "TFC token to be used by GH Actions"
  value       = tfe_team_token.default.token
  sensitive   = true
}
