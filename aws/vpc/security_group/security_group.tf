#---name, fixed name
resource "aws_security_group" "name" {
  count = "${var.named ? 1 : 0}"

  name        = "${var.name}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.description}"
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"

  lifecycle {
    create_before_destroy = true
  }

  tags = "${var.tags}"
}

#---name_prefix: creates unique name
resource "aws_security_group" "name_prefix" {
  count = "${var.name_prefix ? 1 : 0}"

  name_prefix = "${var.name}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.description}"
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"

  lifecycle {
    create_before_destroy = true
  }

  tags = "${var.tags}"
}


#---skeleton security_group; name_skeleton
resource "aws_security_group" "name_skeleton" {
  count = "${var.name_skeleton ? 1 : 0}"

  name        = "${var.name}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.description}"
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"

  lifecycle {
    create_before_destroy = true
  }

  tags = "${var.tags}"
}

#---skeleton security_group; name_prefix_skeleton
resource "aws_security_group" "name_prefix_skeleton" {
  count = "${var.name_prefix_skeleton ? 1 : 0}"

  name_prefix = "${var.name}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.description}"
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"

  lifecycle {
    create_before_destroy = true
  }

  tags = "${var.tags}"
}
