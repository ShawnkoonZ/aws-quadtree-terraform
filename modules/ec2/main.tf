resource "aws_instance" "shawnkoonz_quadtree_main" {
  ami             = "${var.ami}"
  instance_type   = "${var.instance_type}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.public_quadtree_sg.id}"]

  tags {
    Name = "tf_ec2_quadtree_main"
  }
}
