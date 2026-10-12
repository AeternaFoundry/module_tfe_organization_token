output "organization_tokens_id" {
  description = "Map of id values across all organization_tokens, keyed the same as var.organization_tokens except keys with no id are omitted"
  value       = { for k, v in tfe_organization_token.organization_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_tokens_expired_at" {
  description = "Map of expired_at values across all organization_tokens, keyed the same as var.organization_tokens except keys with no expired_at are omitted"
  value       = { for k, v in tfe_organization_token.organization_tokens : k => v.expired_at if v.expired_at != null && length(v.expired_at) > 0 }
}
output "organization_tokens_force_regenerate" {
  description = "Map of force_regenerate values across all organization_tokens, keyed the same as var.organization_tokens except keys with no force_regenerate are omitted"
  value       = { for k, v in tfe_organization_token.organization_tokens : k => v.force_regenerate if v.force_regenerate != null }
}
output "organization_tokens_organization" {
  description = "Map of organization values across all organization_tokens, keyed the same as var.organization_tokens except keys with no organization are omitted"
  value       = { for k, v in tfe_organization_token.organization_tokens : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "organization_tokens_token" {
  description = "Map of token values across all organization_tokens, keyed the same as var.organization_tokens except keys with no token are omitted"
  value       = { for k, v in tfe_organization_token.organization_tokens : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

