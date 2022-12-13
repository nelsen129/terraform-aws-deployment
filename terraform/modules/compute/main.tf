data "aws_ami" "this" {
  filter {
    name   = "name"
    values = [var.image_name]
  }
}

module "asg" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 6.5"

  name = var.name

  vpc_zone_identifier = var.subnet_ids
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_size

  image_id      = data.aws_ami.this.image_id
  instance_type = var.instance_type

  security_groups   = [module.asg_sg.security_group_id]
  target_group_arns = module.alb.target_group_arns

  tags = var.tags
}

module "asg_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4.0"

  name        = var.name
  description = "A security group"
  vpc_id      = var.vpc_id

  computed_ingress_with_source_security_group_id = [
    {
      rule                     = "http-80-tcp"
      source_security_group_id = module.alb_http_sg.security_group_id
    }
  ]
  number_of_computed_ingress_with_source_security_group_id = 1

  egress_rules = ["all-all"]

  tags = var.tags
}

module "alb_http_sg" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "~> 4.0"

  name        = "${var.name}-alb-http"
  vpc_id      = var.vpc_id
  description = "Security group for ${var.name}"

  ingress_cidr_blocks = ["0.0.0.0/0"]

  tags = var.tags
}

module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  name = var.name

  vpc_id          = var.vpc_id
  subnets         = var.subnet_ids
  security_groups = [module.alb_http_sg.security_group_id]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  target_groups = [
    {
      name             = var.name
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
    },
  ]

  tags = var.tags
}
