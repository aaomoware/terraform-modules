resource "aws_route53_zone" "zones" {
  name              = "${var.name}"
  vpc_id            = "${var.vpc_id}"
  comment           = "${var.comment}"
  vpc_region        = "${var.vpc_region}"
  force_destroy     = "${var.force_destroy}"
  delegation_set_id = "${var.delegation_set_id}"
}
