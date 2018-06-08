provider "aws" {
  region = "${var.region}"
  profile = "rnd"
}

terraform {
  required_version = "> v0.9.0"
}
