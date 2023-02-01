name = "terraform-aws-deployment-stage"

region = "us-east-1"

cidr = "10.21.0.0/16"

enable_ipv6 = true

azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

public_subnets = ["10.21.0.0/24", "10.21.1.0/24", "10.21.2.0/24"]

private_subnets = ["10.21.4.0/24", "10.21.5.0/24", "10.21.6.0/24"]

database_subnets = ["10.21.8.0/24", "10.21.9.0/24", "10.21.10.0/24"]

tags = {
  project     = "terraform-aws-deployment"
  environment = "staging"
  component   = "network"
}
