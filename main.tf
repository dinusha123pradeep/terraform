# Provide blocks is use for add provider specific configurations
provider "aws" {
  region = "us-east-1"
}

# Resource blocks is use for add componet of the infastructure
resource "aws_instance" "app_server" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"

  tags = {
    "Name" = "Terraform tutorial first app server"
  }
}