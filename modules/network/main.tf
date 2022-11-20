module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.0"

  name = var.name
  cidr = var.cidr

  azs = var.azs
  public_subnets = var.public_subnets

}
