resource "aws_default_vpc" "default" {
  enable_dns_support   = "${var.enable_dns_support}"
  enable_classiclink   = "${var.enable_classiclink}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"

  tags {
    Env  = "${var.env}"
    Name = "${var.name}"
  }
}
