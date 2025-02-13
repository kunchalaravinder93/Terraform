resource "aws_instance" "bot" {
  count = var.instance_count
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key

  tags = {
    Name = "tfserver"
  }

}