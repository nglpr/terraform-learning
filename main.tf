terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-3"
}

resource "aws_instance" "app_server" {
#  ami                   = "ami-0fe896fd2ed2733a9" # ami2
  ami                    = "ami-030e837d78f47cbb1" # ubuntu 22.04
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-07fa0ef9683e123ca"]
  subnet_id              = "subnet-00f96059fc5b03970"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
