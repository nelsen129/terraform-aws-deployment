module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.18"

  name = var.name

  cidr        = var.cidr
  enable_ipv6 = var.enable_ipv6

  azs              = var.azs
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  database_subnets = var.database_subnets

  tags = var.tags
}

resource "aws_ssm_parameter" "vpc_id" {
  name = "/${var.tags.project}/${var.tags.environment}/${var.tags.component}/vpc_id"
  type = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.tags.project}/${var.tags.environment}/${var.tags.component}/public_subnet_ids"
  type = "String"
  value = jsonencode(module.vpc.public_subnets)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.tags.project}/${var.tags.environment}/${var.tags.component}/private_subnet_ids"
  type = "String"
  value = jsonencode(module.vpc.private_subnets)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name = "/${var.tags.project}/${var.tags.environment}/${var.tags.component}/database_subnet_ids"
  type = "String"
  value = jsonencode(module.vpc.database_subnets)
}
