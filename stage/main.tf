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
