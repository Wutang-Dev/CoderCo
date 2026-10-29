# variable for aws_security_group" "wordpress"
variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}
#variable for wordpress security group name
variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}
#variable for security group description
variable "security_group_description" {
  description = "The description of the security group"
  type        = string
}
