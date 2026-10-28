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

#AWS Security Group allowing ssh on ip address 86.160.249.231
resource "aws_security_group" "wordpress" {
  name        = "wordpress"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["86.160.249.231/32"]
  }
}
#AWS Security group alllowing http allowing traffic on port 80 and outbound everywhere
resource "aws_security_group" "wordpress_http" {
  name        = "wordpress_http"
  description = "Allow HTTP inbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#AWS EC2 Instance
resource "aws_instance" "wordpress" {

  ami           = "ami-06fb1802e2b757f09"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.wordpress.key_name

  vpc_security_group_ids = [
    aws_security_group.wordpress.id,
    aws_security_group.wordpress_http.id
  ]
  subnet_id                   = "subnet-0ddd1d4ba71747d73"
  associate_public_ip_address = true
 # Run the WordPress installation script during EC2 first boot
  user_data                   = file("${path.module}/install-wordpress.sh")
  user_data_replace_on_change = true
  tags = {
    Name = "WordPress-EC2"
  }
}