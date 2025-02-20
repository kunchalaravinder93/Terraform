provider "aws" {
    region = "us-east-2"
  
}

module "dev" {
    source = "../Day-1"
    ami_id = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    key = "info786key"

  
}