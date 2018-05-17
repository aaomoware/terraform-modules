resource "aws_redshift_subnet_group" "rsg" {
  name        = "${var.name}"
  subnet_ids  = ["${var.subnet_ids}"]
  description = "${var.description}"

  tags = "${var.tags}"
}
