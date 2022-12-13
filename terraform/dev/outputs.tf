output "vpc_id" {
  description = "The id of the vpc"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "The ids of the public subnets"
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "The ids of the private subnets"
  value       = module.network.private_subnet_ids
}

output "database_subnet_ids" {
  description = "The ids of the database subnets"
  value       = module.network.database_subnet_ids
}

output "autoscaling_group_id" {
  description = "The id of the compute asg"
  value       = module.compute.autoscaling_group_id
}

output "lb_dns_name" {
  description = "The dns name of the compute alb"
  value       = module.compute.lb_dns_name
}
