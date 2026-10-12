resource "tfe_organization_token" "organization_tokens" {
  for_each = var.organization_tokens

  expired_at       = each.value.expired_at
  force_regenerate = each.value.force_regenerate
  organization     = each.value.organization
}

