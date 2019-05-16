resource "aws_iam_user" "iu" {
  name          = "${var.name}"
  path          = "${var.path}"
  force_destroy = "${var.force_destroy}"
}
