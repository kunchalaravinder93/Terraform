provider "aws" { 
    region = "us-east-2"
}



resource "aws_s3_bucket" "example" {
  bucket = "blusan123"
  
}



resource "aws_instance" "dev" {
    ami = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    depends_on = [ aws_s3_bucket.example]
}