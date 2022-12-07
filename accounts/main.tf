provider "aws" {
  region = var.region
}

module "backend" {
  source = "../modules/backend"

  bucket_name   = "${var.name}-state-bucket"
  dynamodb_name = "${var.name}-dynamodb-lock-state"

  tags = var.tags
}

module "accounts" {
  source = "../modules/accounts"
}
