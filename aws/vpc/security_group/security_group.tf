#---name, fixed name
resource "aws_security_group" "sg" {

  name        = "${var.name}"
  vpc_id      = "${var.vpc_id}"
  description = "${var.description}"
  revoke_rules_on_delete = "${var.revoke_rules_on_delete}"

  lifecycle {
    create_before_destroy = true
  }

  tags = "${var.tags}"
}
