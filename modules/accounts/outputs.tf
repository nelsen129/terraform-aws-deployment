output "organization_accounts" {
  description = "List of accounts in the organization"
  value       = resource.aws_organizations_organization.this.accounts
}

output "organization_arn" {
  description = "ARN of the organization"
  value       = resource.aws_organizations_organization.this.arn
}

output "organization_id" {
  description = "ID of the organization"
  value       = resource.aws_organizations_organization.this.id
}