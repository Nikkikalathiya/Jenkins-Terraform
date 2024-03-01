terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 1.0"
    }
  }
}
terraform {
  required_version = ">=0.13"
}
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-0440d3b780d96b29d"
   instance_type = "t2.micro"
   key_name = "first-key"
   tags = {
      Name = "Example"
   }

}
