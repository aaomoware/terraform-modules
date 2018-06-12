resource "aws_iam_access_key" "ak" {
  count   = "${length(var.user == length(keys(var.pgp_key)) ? 1: 0)}"
  user    = "${element(var.user, count.index)}"
  pgp_key = "${var.pgp_key[element(var.user,count.index)]}"
}
