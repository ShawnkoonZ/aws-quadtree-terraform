terraform {
  backend "s3" {
    bucket  = "shawnkoonz-quadtree-files"
    key     = "terraform/terraform.tfstate"
    region  = "us-west-2"
    profile = "shawnkoonz-ec2-user"
  }
}

provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

module "ec2" {
  source   = "../../modules/ec2"
  key_name = "${var.key_name}"
}

module "s3" {
  source = "../../modules/s3"
}

module "dynamodb" {
  source = "../../modules/dynamodb"
}

module "lambda" {
  source = "../../modules/lambda"
}
