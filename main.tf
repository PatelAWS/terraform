terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  access_key = AKIAWHPF5JLQWR55BLXK
  secret_key = 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
}

resource "aws_instance" "test" {
  ami           = "ami-07887371458d4a24b"
  instance_type = "t2.micro"
  key_name = "abc"

  tags = {
    Name = "jenkins-1"
  }
}
