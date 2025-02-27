
module "dev_instance" {
    source = "./modules/ec2"
    ami_id = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    key = "info786key"
    env_name = "dev"
  
}


