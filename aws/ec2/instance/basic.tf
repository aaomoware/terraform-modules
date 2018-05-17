resource "aws_instance" "basic" {
  count = "${var.basic ? 1: 0}"

  ami                                  = "${var.ami}"
  key_name                             = "${var.key_name}"
  subnet_id                            = "${var.subnet_id}"
  instance_type                        = "${var.instance_type}"
  vpc_security_group_ids               = ["${var.vpc_security_group_ids}"]

  tags = "${var.tags}"
}
