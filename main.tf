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
      version = "~> version = "5.54.1""
    }
  }
}

provider "aws" {
  region = "us-east-1
}

#EC2 details

resource "aws_instance" "instance1" {
  ami = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"
  tags = {
    name "linux"
  }
 user_data                   = file("bootstrap.sh")
}
