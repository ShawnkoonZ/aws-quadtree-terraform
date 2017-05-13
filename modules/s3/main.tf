resource "aws_s3_bucket" "quadtree-main-bucket" {
  bucket        = "tf-quadtree-main-bucket"
  acl           = "private"
  force_destroy = true

  tags {
    Name        = "tf_s3_quadtree_main"
    Description = "Quadtree node files will be uploaded."
  }

  lifecycle_rule {
    id      = "all objects"
    prefix  = "*"
    enabled = true

    expiration {
      days = 3
    }
  }
}
