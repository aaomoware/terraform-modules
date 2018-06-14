resource "aws_iam_role_policy" "irp" {
  count  = "${length(var.names) != 0 ? length(var.names) : 0}"
  name   = "${element(var.names,count.index)}"
  role   = "${element(var.names,count.index)}"
  policy = "${var.policies[element(var.names,count.index)]}"
}
