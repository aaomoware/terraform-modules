resource "aws_db_security_group" "dsg" {
  tags        = "${var.tags}"
  name        = "${var.name}"
  ingress     = "${var.ingress}"
  description = "${var.description}"
}
