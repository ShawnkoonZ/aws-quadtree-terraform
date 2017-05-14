resource "aws_dynamodb_table" "shawnkoonz-quadtree-table" {
  name           = "tf-quadtree-dynamodb"
  read_capacity  = "${var.read_capacity}"
  write_capacity = "${var.write_capacity}"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags {
    Name = "tf-quadtree-dynamodb"
  }
}
