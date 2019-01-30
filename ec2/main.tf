resource "aws_instance" "traform-ec2" {
  count         = "${var.count}"
  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"
  tags = {
    Name = "terraform-ec2"
    Location =  "Miami"
  }
}
