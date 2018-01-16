resource "aws_iot_policy" "ip" {
  name   = "${var.name}"
  policy = "${var.policy}"
}
