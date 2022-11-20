provider "aws" {
  region = "us-east-1"

  allowed_account_ids = var.allowed_account_ids
}

terraform {
  backend "s3" {
    bucket = "terraform-state-stage-38493"
    key    = "stage/terraform.tfstate"
    region = "us-east-1"
  }
}

module "network" {
  source = "../modules/network"

  name = var.name

  cidr = var.cidr
  azs  = var.azs

  public_subnets = var.public_subnets
}

module "compute" {
  source = "../modules/compute"

  name = var.name

  subnet_ids = module.network.subnet_ids
}
