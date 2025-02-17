output "rav" {
    value = [ aws_instance.bot.public_ip , aws_instance.bot.private_ip ]
  
}