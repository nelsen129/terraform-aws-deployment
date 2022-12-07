variable "account_id" {
  description = "Account ID to create resources in"
  type        = string
  default     = ""
}

variable "management_account_id" {
  description = "Account ID for the management account"
  type        = string
  default     = ""
}

variable "admin_role_name" {
  description = "Role name to use for switching from root account"
  type        = string
  default     = "OrganizationAccountAccessRole"
}

variable "role_name" {
  description = "Role name to create"
  type        = string
  default     = ""
}

variable "power_user_access" {
  description = "Whether to assign power user access to the role. Defaults to read only access"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
  default     = {}
}
