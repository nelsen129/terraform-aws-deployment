output "autoscaling_group_id" {
  description = "The id of the compute asg"
  value       = module.compute.autoscaling_group_id
}

output "lb_dns_name" {
  description = "The dns name of the compute alb"
  value       = module.compute.lb_dns_name
}
