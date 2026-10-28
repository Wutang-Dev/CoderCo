terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
#AWS Provider
provider "aws" {
  region = "eu-north-1"
}

#SSH Key Pair
resource "aws_key_pair" "wordpress" {  
  key_name   = "wordpress"
  public_key = file("/home/ravi/PEM/wordpress.pem.pub")
}