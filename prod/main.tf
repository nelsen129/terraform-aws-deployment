provider "aws" {
  region = "us-east-1"

  allowed_account_ids = var.allowed_account_ids
}

terraform {
  backend "s3" {
    bucket = "terraform-state-prod-82934"
    key    = "prod/terraform.tfstate"
    region = "us-west-1"
  }
}

module "network" {
  source = "../modules/network"

  name = var.name

  cidr = var.cidr
  azs  = var.azs

  public_subnets = var.public_subnets
}
