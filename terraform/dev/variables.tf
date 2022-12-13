variable "name" {
  description = "Name to be used on all the resources as identifier"
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
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overriden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "enable_ipv6" {
  description = "Whether to enable IPv6 within the VPC"
  type        = bool
  default     = true
}

variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
  default     = []
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "database_subnets" {
  description = "A list of database subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "wordpress_ami_name" {
  description = "Name of the AMI to use in the compute asg"
  type        = string
  default     = ""
}

variable "compute_instance_type" {
  description = "Instance type to use for the compute asg"
  type        = string
  default     = ""
}

variable "compute_min_size" {
  description = "Minimum number of EC2 instances in the compute asg"
  type        = number
  default     = 0
}

variable "compute_max_size" {
  description = "Maximum number of EC2 instances in the compute asg"
  type        = number
  default     = 3
}

variable "compute_desired_size" {
  description = "Desired number of EC2 instances in the compute asg"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Map of tags to apply to resources"
  type        = map(string)
  default     = {}
}
