#AWS EC2 Instance
resource "aws_instance" "wordpress" {

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_pair_name

  vpc_security_group_ids = [
    var.security_group_id
  ]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  # Run the WordPress installation script during EC2 first boot
  user_data                   = file("${path.module}/install-wordpress.sh")
  user_data_replace_on_change = true
  tags = {
    Name = var.tag_name
  }
}