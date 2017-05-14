variable "s3_bucket_name" {
  type        = "string"
  default     = "shawnkoonz-quadtree-files"
  description = "Bucket name where lambda file is located in."
}

variable "s3_key_name" {
  type        = "string"
  default     = "lambda/quadtree_lambda.zip"
  description = "Key name of the lambda file in the S3 bucket."
}

variable "handler_name" {
  type    = "string"
  default = "quadtree_lambda.launch_container"
}

variable "runtime" {
  type    = "string"
  default = "python3.6"
}

# IAM
variable "quadtree-lambda-role-arn" {
  type    = "string"
  default = "arn:aws:iam::163143440750:role/quadtree-lambda-role"
}

# data "aws_iam_policy_document" "shawnkoonz-quadtree-role-policy" {
#   statement {
#     actions = ["sts:AssumeRole"]


#     principals {
#       type        = "Service"
#       identifiers = ["ec2.amazonaws.com"]
#     }
#   }
# }


# data "aws_iam_policy_document" "shawnkoonz-quadtree-role-policy-doc" {
#   statement {
#     effect = "Allow"


#     actions = [
# "cloudwatch:*",
# "dynamodb:*",
# "logs:*",
# "s3:*",
#     ]


#     resources = [
#       "*",
#     ]
#   }
# }

