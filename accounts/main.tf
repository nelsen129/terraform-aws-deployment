provider "aws" {
  region = "us-east-1"
}

module "backend" {
  source = "../modules/backend"

  name = var.name

  tags = var.tags
}