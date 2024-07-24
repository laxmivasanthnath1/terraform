resource "aws_instance" "king" {
  ami                         = "ami-03972092c42e8c0ca"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "test instance"
  vpc_security_group_ids     = ["sg-08aa748db9387b70c"]
  subnet_id                   = "subnet-05365330db8cfbda9"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "king"
  }
}
