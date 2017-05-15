resource "aws_lambda_function" "shawnkoonz-quadtree-lambda" {
  function_name = "tf-quadtree-lambda"
  s3_bucket     = "${var.s3_bucket_name}"
  s3_key        = "${var.s3_key_name}"
  handler       = "${var.handler_name}"
  runtime       = "${var.runtime}"
  role          = "${var.quadtree-lambda-role-arn}"
  description   = "launches a container with specific file name."
}
