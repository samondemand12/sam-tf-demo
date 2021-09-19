provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "dev" {
  ami           = "ami-04b6c97b14c54de18"
  instance_type = var.instype
  count =var.istest == true ? 1 :0
  count = 2 
  tags = {
    Name = "Sam EC2 Instance course ${count.index}" 
  }
}
