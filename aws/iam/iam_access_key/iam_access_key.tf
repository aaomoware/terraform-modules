resource "aws_iam_access_key" "ak" {
  count   = "${length(var.user == length(values(var.gpg_key)) ? 1: 0)}"
  user    = "${element(var.user, count.index)}"
  gpg_key = "${var.gpg_key[element(var.user,count.index)])}"
}
