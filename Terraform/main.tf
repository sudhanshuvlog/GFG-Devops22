# module "iam_example_iam-account" {
#   source  = "terraform-aws-modules/iam/aws//examples/iam-account"
#   version = "5.44.0"
# }

module "iam_user" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"

  name          = "terraformuserGfg"
  force_destroy = true

  pgp_key = "keybase:test"

  password_reset_required = false
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.2"
  bucket = "gfgbucket24new"
}