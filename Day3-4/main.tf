resource "aws_instance" "bot" {

  ami = "ami-0cb91c7de36eed2cb"
  instance_type = "t2.micro"
  key_name = "info786key"

  tags = {
    Name = "tfserver"
  }

}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}