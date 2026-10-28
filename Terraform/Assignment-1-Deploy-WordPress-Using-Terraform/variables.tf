# variable for instance type
variable "instance_type" {
  description = "Type of instance to be created"
  type        = string
  default     = "t3.micro"
}

# variable for AMI ID
variable "ami_id" {
  description = "AMI ID for the instance"
  type        = string
  default     = "ami-06fb1802e2b757f09"
}

#variable for region
variable "region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "eu-north-1"
}

#variable for tag name 
variable "tag_name" {
  description = "Tag name for the resources"
  type        = string
  default     = "wordpress"
}

#variable for SSH key pair name
variable "key_pair_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "wordpress"
}
#variable for subnet id
variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
  default     = "subnet-0ddd1d4ba71747d73"
}

#variable for security group name 
variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "wordpress"
}
#variable for security group name 
variable "security_group_http_name" {
  description = "Name of the security group for HTTP"
  type        = string
  default     = "wordpress_http"
}

# variable for wordpress security group decscription
variable "security_group_description" {
  description = "Description for the security group"
  type        = string
  default     = "Allow SSH inbound traffic"
}

# variable for wordpress security group decscription
variable "security_group_http_description" {
  description = "Description for the security group"
  type        = string
  default     = "Allow HTTP inbound traffic"
}

