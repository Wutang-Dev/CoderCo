# output block for key pair name resource "aws_key_pair" "wordpress"
output "wordpress_key_pair_name" {
  value = aws_key_pair.wordpress.key_name
}