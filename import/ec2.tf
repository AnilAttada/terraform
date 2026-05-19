resource "aws_instance" "linux" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-091fcb36fdf652be8"]
  # user_data_replace_on_change = null
  tags = {
    Name = "linux-change"
  }
}