resource "aws_iam_group" "iam_group" {
  count = "${length(var.names) != 0 ? length(var.names) : 0}"
  name = "${element(var.names,count.index)}"
  path = "${length(values(var.paths)) != 0 ? var.paths[element(var.names,count.index)] : "/" }"
}
