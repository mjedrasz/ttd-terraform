provider "template" {
  version = "~> 2.1"
}

provider "aws" {
  region  = var.aws_region
  version = "~> 2.7"
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}

resource "aws_pinpoint_app" "pinpoint" {
  name = "${var.aws_env}-ttd"
}

resource "aws_ssm_parameter" "pinpoint_app_id" {
  name  = "/${var.aws_env}/pinpoint/app/id"
  type  = "String"
  value = aws_pinpoint_app.pinpoint.id
}
