terraform {
  backend "s3" {
    bucket = "sanravi123"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-state-lock-dynamo" # DynamoDB table used for state locking, note: first run day-4-s3-dynamodb resource then day-4-state-remote-backend
    encrypt        = true 
  }
}
