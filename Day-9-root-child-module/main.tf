provider "aws" {  
  region = "us-east-2"
}


module "ec2" {
    source = "./modules/ec2"
    ami_id = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    key = "info786key"

  
}

module "s3" {
    source = "./modules/s3"
  
}


module "rds" {
    source = "./modules/rds"
  
}
