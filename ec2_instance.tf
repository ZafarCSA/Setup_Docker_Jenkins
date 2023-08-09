resource "aws_instance" "my_instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  tags = {
    Name = var.instance_name
  }
  key_name  = var.key_pair
  user_data = file("user_data.sh")

}