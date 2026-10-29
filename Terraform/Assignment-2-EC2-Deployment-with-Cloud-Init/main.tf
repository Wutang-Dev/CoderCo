#AWS Security Group allowing ssh on ip address 86.160.249.231 and allowing http everywhere
resource "aws_security_group" "nginx_security_group" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id


  ingress {
    description = "SSH access from specific IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["86.160.249.231/32"]
  }
  ingress {
    description = "HTTP access from all IPs"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = var.tag_name
  }
}
# ec2 instance 
resource "aws_instance" "nginx_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.nginx_key_pair.key_name
  vpc_security_group_ids      = [aws_security_group.nginx_security_group.id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  user_data                   = file("${path.module}/cloud-init.yaml")
  user_data_replace_on_change = true
  tags = {
    Name = var.ec2_tag_name
  }
}
# key pair resource
resource "aws_key_pair" "nginx_key_pair" {
  key_name   = var.key_pair_name
  public_key = file("/home/ravi/PEM/wordpress.pem.pub")
}