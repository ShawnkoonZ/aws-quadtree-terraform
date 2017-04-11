resource "aws_instance" "shawnkoonz_quadtree_main" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
}