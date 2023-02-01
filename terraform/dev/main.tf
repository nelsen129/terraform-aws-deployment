data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.tags.project}/${var.tags.environment}/network/vpc_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.tags.project}/${var.tags.environment}/network/public_subnet_ids"
}

module "compute" {
  source = "../modules/compute"

  name = var.name

  vpc_id     = data.aws_ssm_parameter.vpc_id.value
  subnet_ids = jsondecode(data.aws_ssm_parameter.public_subnet_ids.value)

  image_name    = var.wordpress_ami_name
  instance_type = var.compute_instance_type

  min_size     = var.compute_min_size
  max_size     = var.compute_max_size
  desired_size = var.compute_desired_size

  tags = var.tags
}
