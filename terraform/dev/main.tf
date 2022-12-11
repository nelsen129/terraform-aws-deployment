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

module "compute" {
  source = "../modules/compute"

  name = var.name

  vpc_id     = module.network.vpc_id
  subnet_ids = module.network.public_subnet_ids

  image_name    = var.compute_image_name
  instance_type = var.compute_instance_type

  min_size     = var.compute_min_size
  max_size     = var.compute_max_size
  desired_size = var.compute_desired_size

  tags = var.tags
}
