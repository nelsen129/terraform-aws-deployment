name = "terraform-aws-deployment-dev"

region = "us-east-1"

cidr = "10.22.0.0/16"

enable_ipv6 = true

azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

public_subnets = ["10.22.0.0/24", "10.22.1.0/24", "10.22.2.0/24"]

private_subnets = ["10.22.4.0/24", "10.22.5.0/24", "10.22.6.0/24"]

database_subnets = ["10.22.8.0/24", "10.22.9.0/24", "10.22.10.0/24"]

compute_instance_type = "t2.micro"

compute_min_size = 0

compute_max_size = 3

compute_desired_size = 1

tags = {
  project     = "terraform-aws-deployment"
  environment = "development"
}
