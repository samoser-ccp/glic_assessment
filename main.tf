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


  }
}
