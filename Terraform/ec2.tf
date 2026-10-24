resource "aws_instance" "this" {
  ami                     = "ami-021aaf3749be66813"
  instance_type           = var.instance_type  
}
resource "aws_default_subnet" "default_az1" {
  availability_zone = "eu-north-1a"
}
resource "aws_instance" "import" {
  ami                     = "ami-021aaf3749be66813"
  instance_type           = var.instance_type
  tags = {
      
      Name        = "terraform-import"
    } 
}
