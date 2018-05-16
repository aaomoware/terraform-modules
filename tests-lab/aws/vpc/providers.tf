provider "aws" {
  region = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile = "${var.profile}"
}

terraform {
  required_version = "> v0.9.0"
}
