terraform {
 required_providers {
 aws = {
  source ="registry.terraform.io/hashicorp/aws"
  version = ">=1.0"
 }
 }
}
#provider "aws" {
 #assume_role {
  #role_arn = "arn:aws:iam::140882719977:role/polyadmin"
 #}
 #access_key = var.access_key
 #secret_key = var.secret_key
 #region = var.region
#}
resource "aws_instance" "snow_discovery" {
  ami = "ami-0b7d0db7325d1918a"
  instance_type = "t2.micro"
  subnet_id = "subnet-226cf86b"
  tags = {
      Name = "Service-now-discovery"
  }
}
