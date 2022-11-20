variable "name" {
    description = "Name to be used as identifier"
    type        = string
    default     = ""
}

variable "cidr" {
    description = "CIDR block for the vpc. Default value is a valid CIDR, but not valid in AWS"
    type        = string
    default     = "0.0.0.0/0"
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
