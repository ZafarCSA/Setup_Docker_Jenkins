variable "ami" {
  default = "ami-0f5ee92e2d63afc18"
}

variable "vpc_ID" {
  default = "vpc-0aef54445ced2dc34"
}
variable "instance_type" {
  default = "t2.medium"
}

variable "instance_name" {
  default = "Jenkins_Server"
}

variable "key_pair" {
  default = "Jenkins"
}

variable "aws_region" {
  default = "ap-south-1"
}

variable "jenkins_sg_name" {
  default = "jenkins_security_group"
}