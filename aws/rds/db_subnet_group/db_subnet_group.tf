resource "aws_db_subnet_group" "dsg" {
  tags        = "${var.tags}"
  name        = "${var.name}"
  subnet_ids  = ["${var.subnet_ids}"]
  description = "${var.description}"
}
