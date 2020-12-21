output "workspace_id" {
  description = "TFC workspace ID"
  value       = tfe_workspace.default.id
}

output "tfe_token" {
  description = "TFE token to be used by GH Actions"
  value       = tfe_team_token.default.token
  sensitive   = true
}
