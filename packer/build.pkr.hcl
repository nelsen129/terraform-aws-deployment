packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

variable "wordpress_ami_name" {
  description = "Name for wordpress ami"
  type        = string
  default     = ""
}

source "amazon-ebs" "wordpress-ami" {
  region = "us-east-1"

  ami_name = var.wordpress_ami_name

  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }

  instance_type = "t2.micro"
  ssh_username  = "ubuntu"
}

build {
  name = "wordpress-ami"

  sources = [
    "source.amazon-ebs.wordpress-ami"
  ]
}