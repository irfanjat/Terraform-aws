terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }
}

provider "aws" {
    region = var.region
  
}

resource "aws_instance" "mywebserver" {
    ami     = "ami-0683ee28af6610487"
    instance_type = "t3.micro"

    tags = {
        Name = "SampleServer"
    }
  
}