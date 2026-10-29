#combine http and public ip to create a url for wordpress
output "wordpress_url" {
  value = "http://${module.ec2_instance.public_ip}"
}

#output block for public ip
output "public_ip" {
  value = module.ec2_instance.public_ip
}
#output block for private ip
output "private_ip" {
  value = module.ec2_instance.private_ip
}
