provider "aws" {
  region  = "eu-west-1"
  profile = "playground"
}

terraform {
  required_version = "> v0.9.0"
}
