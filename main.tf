terraform {
  cloud {
    organization =  "my_aws"
    workspaces {  
      name = "terraform-ec2-workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicor/aws"
      version = "~> 3.74.2"
    }
  }
}

provider "aws" {
  region = "us-east-1
}

#EC2 details

resource "aws_instance" "instance1" {
  ami = ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  tags = {
    name "linux"
  }
}
