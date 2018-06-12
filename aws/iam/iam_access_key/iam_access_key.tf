resource "aws_iam_access_key" "ak" {
  count   = "${length(var.user == length(var.gpg_key) ? 1: 0)}"
  user    = "${element(var.user, count.index)}"
  gpg_key = "${element(var.gpg_key, count.index)}"
}
