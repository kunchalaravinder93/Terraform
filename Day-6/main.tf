resource "aws_instance" "dev" {
    ami = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    key_name = "info786key"
  
}