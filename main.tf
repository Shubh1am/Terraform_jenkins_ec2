resource "aws_instance" "my-machine" {

  count = 4


  ami = var.ec2_ami
  instance_type = var.instance_type
  tags = {
   Name = "ec2-${count.index}"
  }
}
