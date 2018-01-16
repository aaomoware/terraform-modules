resource "aws_sns_topic" "st" {
  name = "${var.name}"
  policy = "${var.policy}"
  display_name = "${var.display_name}"
  delivery_policy = "${var.delivery_policy}"
}
