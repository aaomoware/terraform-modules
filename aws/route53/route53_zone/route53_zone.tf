resource "aws_route53_zone" "zones_vpc" {
  count             = "${var.type == "private" ? 1 : 0}"

  name              = "${var.name}"
  vpc_id            = "${var.vpc_id}"
  comment           = "${var.comment}"
  vpc_region        = "${var.vpc_region}"
  force_destroy     = "${var.force_destroy}"
}

resource "aws_route53_zone" "zones_set_id" {
  count             = "${var.type == "public" ? 1 : 0}"

  name              = "${var.name}"
  comment           = "${var.comment}"
  vpc_region        = "${var.vpc_region}"
  force_destroy     = "${var.force_destroy}"
  delegation_set_id = "${var.delegation_set_id}"
}
