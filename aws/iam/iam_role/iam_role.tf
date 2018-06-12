resource "aws_iam_role" "ir" {
  count                 = "${length(var.names) != 0 ? length(var.names) : 0}"
  name                  = "${element(var.names,count.index)}"
  path                  = "${var.paths}"
  description           = "${var.descriptiosn[element(var.names,count.index)]}"
  assume_role_policy    = "${var.assume_role_policy[element(var.names,count.index)]}"
  max_session_duration  = "${var.max_session_duration}"
  force_detach_policies = "${var.force_detach_policies}"
}


# NOTE: path not fully yet implemented; its default to /
