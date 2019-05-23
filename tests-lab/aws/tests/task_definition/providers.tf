# As of vwrsion 0.11.10 we cannot use variables in the terraform block, hence hardcoding variables.
# https://www.terraform.io/docs/configuration/terraform.html#description

# we are making use of workspaces

terraform {
  required_version = "~> 0.10"
}

provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}
