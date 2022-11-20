variable "name" {
    description = "Name to be used as identifier"
    type        = string
    default     = ""
}

variable "subnet_ids" {
    description = "A list of subnet ids for the asg"
    type        = list(string)
    default     = []
}
