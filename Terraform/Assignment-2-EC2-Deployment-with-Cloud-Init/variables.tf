#variable for region
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "eu-north-1"
}
#variable for vpc id
variable "vpc_id" {
  default     = "vpc-09a5d1977b0448583"
  description = "The ID of the VPC where the security group will be created"
  type        = string
}
#variable for security group name
variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "nginx_security_group"
}
#variable for security group description
variable "security_group_description" {
  description = "The description of the security group"
  type        = string
  default     = "Security group for Nginx instance"
}
#variable for tag name 
variable "tag_name" {
  description = "The name tag for the security group"
  type        = string
  default     = "nginx_security_group"
}
#variable for ami id
variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-06fb1802e2b757f09"
}
#variable for instance type
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}
#variable for key name
variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "wordpress"
}
#variable for tag name for ec2 instance
variable "ec2_tag_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "nginx_instance"
}
#variable for subnet id
variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched"
  type        = string
  default     = "subnet-0ddd1d4ba71747d73"
}
#varaible for key pair name 
variable "key_pair_name" {
  description = "The name of the key pair to create"
  type        = string
  default     = "nginx"
}