terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }


  required_version = ">= 1.2"


}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c7f9161f8491665f"
  instance_type = "t2.micro"

  tags = {
    Name = "SampleAppServerInstance"
  }
}
