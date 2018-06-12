resource "aws_iam_access_key" "ak" {
  count   = "${length(var.user)}"
  user    = "${element(var.user, count.index)}"
  pgp_key = "${var.pgp_key[element(var.user,count.index)]}"
}
