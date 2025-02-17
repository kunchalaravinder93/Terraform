resource "aws_instance" "bot" {
  
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key

  tags = {
    Name = "tfserver"
  }

}