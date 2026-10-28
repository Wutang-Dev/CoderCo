# output block for ec2 instance public IP resource "aws_instance" "wordpress"
output "wordpress_instance_public_ip" {
  value = aws_instance.wordpress.public_ip
}

#combine http and public ip to create a url for wordpress
output "wordpress_url" {
  value = "http://${aws_instance.wordpress.public_ip}"
}