module "network" {
  source = "../modules/network"

  name = var.name

  cidr        = var.cidr
  enable_ipv6 = var.enable_ipv6

  azs              = var.azs
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  database_subnets = var.database_subnets

  tags = var.tags
}
