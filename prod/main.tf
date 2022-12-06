provider "aws" {
  region = "us-east-1"

  allowed_account_ids = var.allowed_account_ids
}

terraform {
  backend "s3" {
    bucket = "terraform-state-prod-38493"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}
