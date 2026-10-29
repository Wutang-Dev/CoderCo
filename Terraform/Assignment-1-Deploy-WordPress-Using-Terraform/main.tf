

#AWS key pair module
module "key_pair" {
  source          = "./modules/key-pair"
  key_pair_name   = var.key_pair_name
  public_key_path = var.public_key_path
}

#AWS security group module
module "security_group" {
  source                     = "./modules/security-group"
  security_group_name        = var.security_group_name
  security_group_description = var.security_group_description
  vpc_id                     = var.vpc_id
}


#AWS EC2 instance module
module "ec2_instance" {
  source            = "./modules/EC2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_pair_name     = module.key_pair.wordpress_key_pair_name
  security_group_id = module.security_group.security_group_id
  subnet_id         = var.subnet_id
  tag_name          = var.tag_name
} 