resource "aws_iam_access_key" "ak" {
  user    = "${var.user}"
  status  = "${var.status}"
  pgp_key = "${var.pgp_key}"
}
