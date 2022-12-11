variable "name" {
  description = "Name to be used as identifier"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "VPC id for the asg/elb"
  type        = string
  default     = ""
}

variable "subnet_ids" {
  description = "A list of subnet ids for the asg"
  type        = list(string)
  default     = []
}

variable "image_name" {
  description = "Name of the AMI to use in the asg"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "Instance type to use for the asg"
  type        = string
  default     = ""
}

variable "min_size" {
  description = "Minimum number of EC2 instances in the asg"
  type        = number
  default     = 0
}

variable "max_size" {
  description = "Maximum number of EC2 instances in the asg"
  type        = number
  default     = 3
}

variable "desired_size" {
  description = "Desired number of EC2 instances in the asg"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Map of tags to apply to resources"
  type        = map(string)
  default     = {}
}
