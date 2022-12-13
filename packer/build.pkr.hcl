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

variable "wordpress_ami_users" {
  description = "AWS account ids allowed to access wordpress ami"
  type        = list(string)
  default     = []
}

source "amazon-ebs" "wordpress-ami" {
  region = "us-east-1"

  ami_name  = var.wordpress_ami_name
  ami_users = var.wordpress_ami_users

  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-focal-20.04-amd64-server-*"
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

  provisioner "shell" {
    inline = [
      "echo Installing Ansible",
      "sudo apt update",
      "sudo apt install -y software-properties-common",
      "sudo apt-add-repository -y ppa:ansible/ansible",
      "sudo apt update",
      "sudo apt -y install ansible"
    ]
  }

  provisioner "ansible" {
    playbook_file = "./playbook.yml"
  }

  provisioner "shell" {
    inline = [
      "echo Removing Ansible",
      "sudo apt -y remove ansible software-properties-common",
      "sudo apt -y autoremove"
    ]
  }
}