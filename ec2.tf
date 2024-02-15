resource "aws_instance" "sairam" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "Nithin Kundathil"
  }
}