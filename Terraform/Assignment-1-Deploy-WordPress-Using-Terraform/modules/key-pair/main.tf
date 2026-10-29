#SSH Key Pair
resource "aws_key_pair" "wordpress" {
  key_name   = var.key_pair_name
  public_key = file(var.public_key_path)
}