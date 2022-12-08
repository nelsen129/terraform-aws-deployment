output "vpc_id" {
  description = "The id of the vpc"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "The ids of the public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "The ids of the private subnets"
  value       = module.vpc.private_subnets
}

output "database_subnet_ids" {
  description = "The ids of the database subnets"
  value       = module.vpc.database_subnets
}
