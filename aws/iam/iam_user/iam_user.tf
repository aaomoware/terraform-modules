resource "aws_iam_user" "iu" {
  count         = "${length(var.names) != 0 ? length(var.names) : 0}"
  name          = "${element(var.names,count.index)}"
  path          = "${path[element(var.names,count.index)]}"
  force_destroy = "${var.force_destroy}"
}
