module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"

  name = var.name
  tags = var.tags

  vpc_zone_identifier = var.subnet_ids
  min_size            = 0
  max_size            = 3
  desired_capacity    = 1

  image_id      = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name = "name"

    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }
}
