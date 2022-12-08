terraform {
  backend "s3" {
    bucket         = "terraform-aws-deployment-state-bucket"
    dynamodb_table = "terraform-aws-deployment-dynamodb-lock-state"
    key            = "stage/terraform.tfstate"
    region         = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.45"
    }
  }

  required_version = "~> 1.3"
}
