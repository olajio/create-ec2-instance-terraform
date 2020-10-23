terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "XXXXXXXXXX"
  secret_key = "XXXXXXXXXX"
}

#Create a EC2 instance
resource "aws_instance" "myEC2Instance" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"

  tags = {
    Name = "ubuntu"
  }
}
