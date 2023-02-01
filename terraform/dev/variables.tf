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
