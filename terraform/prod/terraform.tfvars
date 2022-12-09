name = "terraform-aws-deployment"

region = "us-east-1"

cidr = "10.20.0.0/16"

enable_ipv6 = true

azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

public_subnets = ["10.20.0.0/24", "10.20.1.0/24", "10.20.2.0/24"]

private_subnets = ["10.20.4.0/24", "10.20.5.0/24", "10.20.6.0/24"]

database_subnets = ["10.20.8.0/24", "10.20.9.0/24", "10.20.10.0/24"]

tags = {
  project     = "terraform-aws-deployment"
  environment = "production"
}
