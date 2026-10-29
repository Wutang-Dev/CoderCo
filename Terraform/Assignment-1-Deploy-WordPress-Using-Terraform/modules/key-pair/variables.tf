#write modules/key-pair/key-pair-variables.tf

#variable key_pair_name
variable "key_pair_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "wordpress"
}
#variable public_key_path
variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}