resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "admin123"
  db_subnet_group_name    = aws_db_subnet_group.dev.id
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

  tags = {
    Name = "RDSDB"
  }
}



resource "aws_db_subnet_group" "dev" {
  name       = "main"
  subnet_ids = ["subnet-059ba7753915b3213", "subnet-0a65009cf0937fe00"]

  tags = {
    Name = "My DB subnet group"
  }
}