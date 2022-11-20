variable "name" {
    description = "Name to be used as identifier"
    type        = string
    default     = ""
}

variable "tags" {
    description = "Map of tags to apply to resources"
    type        = map(string)
    default     = {}
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
