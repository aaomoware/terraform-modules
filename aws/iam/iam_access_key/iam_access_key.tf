resource "aws_iam_access_key" "secure" {
  count = "${var.encrypted_secret ? 1 : 0}"

  user    = "${var.user}"
  status  = "${var.status}"
  pgp_key = "${var.pgp_key}"
}

resource "aws_iam_access_key" "insecure" {
  count = "${var.encrypted_secret ? 0 : 1}"

  user   = "${var.user}"
  status = "${var.status}"
}
