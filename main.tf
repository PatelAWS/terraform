terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

provider "aws" {

}

resource "aws_instance" "test" {
  ami           = "ami-07887371458d4a24b"
  instance_type = "t2.micro"
  key_name = "abc"

  tags = {
    Name = "jenkins-1"
  }
}
