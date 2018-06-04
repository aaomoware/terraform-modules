terraform {
  required_version = "> v0.9.0"
}

provider "aws" {
  region = "eu-west-1"
  profile = "rnd"
}
