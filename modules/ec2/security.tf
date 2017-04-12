resource "aws_security_group" "public_quadtree_sg" {
  name        = "tf_quadtree_sg"
  description = "Allow port 8080, ssh, HTTP inbound traffic."

  tags {
    Name = "tf_quadtree_sg"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "${var.public_cidr}"
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = "${var.public_cidr}"
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = "${var.public_cidr}"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = "${var.public_cidr}"
  }
}
