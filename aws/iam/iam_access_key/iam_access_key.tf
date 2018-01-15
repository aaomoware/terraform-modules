resource "aws_iam_access_key" "ak" {
  count   = "${length(var.user == length(var.pgp_key) ? 1: 0)}"
  user    = "${element(var.user, count.index)}"
  pgp_key = "${element(var.pgp_key, count.index)}"
}
