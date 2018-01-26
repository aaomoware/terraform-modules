resource "aws_redshift_security_group" "rsg" {
  name        = "${var.name}"
  description = "${var.description}"

  ingress {
    cidr                    = "${var.cidr}"
    security_group_name     = "${var.security_group_name}"
    security_group_owner_id = "${var.security_group_owner_id}"
  }
}
