# resource "aws_iam_role" "shawnkoonz-quadtree-lambda-role" {
#   name               = "tf-shawnkoonz-quadtree-lambda-role"
#   path               = "/tf/policies/"
#   assume_role_policy = "${data.aws_iam_policy_document.shawnkoonz-quadtree-role-policy.json}"
# }
# resource "aws_iam_role_policy" "shawnkoonz-quadtree-lambda-role-policy" {
#   name   = "tf-shawnkoonz-quadtree-lambda-role-policy"
#   role   = "${aws_iam_role.shawnkoonz-quadtree-lambda-role}"
#   policy = "${data.aws_iam_policy_document.shawnkoonz-quadtree-role-policy-doc.json}"
# }

