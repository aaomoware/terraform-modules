resource "aws_route53_zone" "zones" {
  count             = "${var.vpc ? 1 : 0}"

  name              = "${var.name}"
  vpc_id            = "${var.vpc_id}"
  comment           = "${var.comment}"
  vpc_region        = "${var.vpc_region}"
  force_destroy     = "${var.force_destroy}"
}

resource "aws_route53_zone" "zones" {
  count             = "${var.set_id ? 1 : 0}"

  name              = "${var.name}"
  comment           = "${var.comment}"
  vpc_region        = "${var.vpc_region}"
  force_destroy     = "${var.force_destroy}"
  delegation_set_id = "${var.delegation_set_id}"
}
