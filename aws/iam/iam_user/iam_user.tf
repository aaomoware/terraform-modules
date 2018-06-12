resource "aws_iam_user" "iu" {
  count         = "${length(var.name) != 0 ? length(var.name) : 0}"
  name          = "${element(var.name,count.index)}"
  path          = "${path[element(var.name,count.index)]}"
  force_destroy = "${var.force_destroy}"
}
