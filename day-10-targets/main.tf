resource "aws_instance" "dev" {
    ami = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    key_name = "info786key"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "ytvhshfbbcerrr" 
}

#terraform apply -target=aws_s3_bucket.dependent
#terraform destroy -target=aws_s3_bucket.dependent

#Example below for multiple targets
#terraform apply -target=aws_s3_bucket.dependent -target=aws_instance.dev -target=aws_db_instance.database