terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region = "ap-southeast-3"
}

resource "aws_instance" "ec2-terraform" {
  ami           = "ami-012972a9e728b3b9c"
  instance_type = "t3.micro"
  key_name = "terraform"
  count = "1"  

  tags = {
    Name = "ec2-terraform"
  }
}
