resource "aws_instance" "this" {
  ami                     = "ami-021aaf3749be66813"
  instance_type           = "t3.micro"  
}
resource "aws_default_subnet" "default_az1" {
  availability_zone = "eu-north-1a"
}
resource "aws_instance" "import" {
  ami                     = "ami-021aaf3749be66813"
  instance_type           = "t3.micro" 
  tags = {
      
      Name        = "terraform-import"
    } 
}
