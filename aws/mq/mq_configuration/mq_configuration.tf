resource "aws_mq_configuration" "mc" {
  name           = "${var.name}"
  data           = "${var.data}"
  engine_type    = "${var.engine_type}"
  description    = "${var.description}"
  engine_version = "${var.engine_version}"
}
