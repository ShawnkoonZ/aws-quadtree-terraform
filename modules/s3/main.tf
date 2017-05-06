resource "aws_s3_bucket" "quadtree-main-bucket" {
  bucket = "tf-quadtree-main-bucket"
  acl = "private"

  tags {
    Name = "tf_s3_quadtree_main"
    Description = "Quadtree node files will be uploaded."
  }

  lifecycle_rule {
    id = "all"
    prefix = "*"
    enabled = true
    expiration {
      days = 3
    }
  }
}