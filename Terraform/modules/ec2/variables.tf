variable "instance_type" {
  type = string
  default = "t3.micro"
}
locals{
  instance_ami = "ami-021aaf3749be66813"
}
output "instance_type" {
  description = "The type of the EC2 instance"
  value = aws_instance.this.id
}