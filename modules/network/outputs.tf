output "vpc_id" {
    description = "The id of the vpc"
    value       = module.vpc.vpc_id
}

output "subnet_ids" {
    description = "The ids of created subnets"
    value       = module.vpc.public_subnets
}
