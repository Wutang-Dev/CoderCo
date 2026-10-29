# Output values for the EC2 instance
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.wordpress.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.wordpress.public_ip
}
output "private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.wordpress.private_ip
}