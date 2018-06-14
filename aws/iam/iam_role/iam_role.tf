resource "aws_iam_role" "ir" {
  count                 = "${length(var.name) != 0 ? length(var.name) : 0}"
  name                  = "${element(var.name,count.index)}"
  path                  = "${var.path}"
  description           = "${var.description[element(var.name,count.index)]}"
  assume_role_policy    = "${assume_role_policy[element(var.name,count.index)]}"
  max_session_duration  = "${var.max_session_duration}"
  force_detach_policies = "${var.force_detach_policies}"
}


# NOTE: path not fully yet implemented; its default to /
