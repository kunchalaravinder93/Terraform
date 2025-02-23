resource "aws_vpc" "dev" {
  
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "myvpc"
  }
}

resource "aws_subnet" "dev" {
  
  vpc_id = aws_vpc.dev.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "public-01"
  }
}

resource "aws_internet_gateway" "dev" {
    vpc_id = aws_vpc.dev.id
    tags = {
        Name = "MYIGW"
      
    }
  
}

resource "aws_route_table" "dev" {
    vpc_id = aws_vpc.dev.id

     route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev.id
  }
  
}

resource "aws_route_table_association" "dev" {
    subnet_id      = aws_subnet.dev.id
  route_table_id = aws_route_table.dev.id
  
}


resource "aws_security_group" "dev" {
  name        = "allow-ssh"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.dev.id

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "dev-sg-terrafm"
  }
}


# resource "aws_instance" "bot" {
  
#   ami = "ami-0cb91c7de36eed2cb"
#   instance_type = "t2.micro"
#   key_name = "info786key"

#   tags = {
#     Name = "tfserver"
#   }

# }