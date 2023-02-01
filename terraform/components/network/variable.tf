variable "name" {
  description = "Name to be used as identifier"
  type        = string
  default     = ""
}

variable "region" {
  description = "Region to provision the resources in"
  type        = string
  default     = ""
}

variable "role_arn" {
  description = "ARN of the role to assume"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "CIDR block for the vpc. Default value is a valid CIDR, but not valid in AWS"
  type        = string
  default     = "0.0.0.0/0"
}

variable "enable_ipv6" {
  description = "Whether to enable IPv6 within the VPC"
  type        = bool
  default     = true
}

variable "azs" {
  description = "A list of azs in the region"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets inside the vpc"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "A list of private subnets inside the vpc"
  type        = list(string)
  default     = []
}

variable "database_subnets" {
  description = "A list of database subnets inside the vpc"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Map of tags to apply to resources"
  type        = map(string)
  default     = {}
}
