provider "aws" {
  version = "~> 2.59"
}

resource "aws_instance" "example" {
  ami           = "ami-0b8cf0f359b1335e1"
  instance_type = "t2.micro"
}
