variable "rds-password" {
    description = "rds password"
    type = string
    default = "admin123"
  
}
variable "rds-username" {
    description = "rds username"
    type = string
    default = "admin"
  
}
variable "ami" {
    description = "ami"
    type = string
    default = "ami-0cb91c7de36eed2cb"
  
}
variable "instance-type" {
    description = "instance-type"
    type = string
    default = "t2.micro"
  
}
variable "key-name" {
    description = "keyname"
    type = string
    default = "info786key"
  
}
variable "backupr-retention" {
    type = number
    default = "7"
  
}