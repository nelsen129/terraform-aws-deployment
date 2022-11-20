module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"

  name = var.name
  tags = var.tags

  vpc_zone_identifier = var.subnet_ids
  min_size            = 0
  max_size            = 3
  desired_capacity    = 1

  image_id      = "ami-032254767a00ef1c1"
  instance_type = "t2.micro"
}
