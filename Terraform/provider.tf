terraform {
  required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "5.56.0"
        }
    }
    backend "s3" {
    bucket         = "terraform-instance-ravi"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    }
}


