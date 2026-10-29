#variable ami id
variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
  default     = "ami-06fb1802e2b757f09"
}

#variable instance type
variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}
#variable for key pair name
variable "key_pair_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "wordpress"
}
# varaible for security group id
variable "security_group_id" {
  description = "Security group ID for the EC2 instance"
  type        = string
}
#variable for subnet id
variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
  default     = "subnet-0ddd1d4ba71747d73"
}
#variable for tag name
variable "tag_name" {
  description = "Tag name for the resources"
  type        = string
  default     = "wordpress"
}