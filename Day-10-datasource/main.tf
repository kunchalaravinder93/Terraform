data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["public-01"] # insert value here
  }
}
data "aws_security_groups" "selected" {
  filter {
    name   = "tag:Name"
    values = ["dev-sg-terrafm"] # insert value here
  }
}


resource "aws_instance" "dev" {
    ami = "ami-0cb91c7de36eed2cb"
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.selected.id
    vpc_security_group_ids = [data.aws_security_groups.selected.ids[0]]

}