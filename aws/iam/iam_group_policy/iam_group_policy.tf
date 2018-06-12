resource "aws_iam_group_policy" "igp" {
  count  = "${length(var.names) != 0 ? length(var.names) : 0}"
  name   = "${element(var.names,count.index)}"
  group  = "${var.groups[element(var.names,count.index)]}"
  policy = "${var.policies[element(var.names,count.index)]}"
}
