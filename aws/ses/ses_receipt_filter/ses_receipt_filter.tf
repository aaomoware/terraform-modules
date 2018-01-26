resource "aws_ses_receipt_filter" "srf" {
  name   = "${var.name}"
  cidr   = "${var.cidr}"
  policy = "${var.policy}"
}
