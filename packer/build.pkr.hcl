packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ec2-ami" {
  region = "us-east-1"

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

  ami_name    = "ec2_ami_{{timestamp}}"
  ami_regions = ["us-east-1"]
}

build {
  name = "ec2-ami"
  sources = [
    "source.amazon-ebs.ec2-ami"
  ]
}