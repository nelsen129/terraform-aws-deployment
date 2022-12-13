output "autoscaling_group_id" {
  description = "The id of the asg"
  value       = module.asg.autoscaling_group_id
}

output "lb_dns_name" {
  description = "The dns name of the alb"
  value       = module.alb.lb_dns_name
}
