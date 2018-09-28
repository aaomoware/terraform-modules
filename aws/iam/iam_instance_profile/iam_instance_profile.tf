resource "aws_iam_instance_profile" "ip" {
  name = "${var.name}"
  role = "${var.role}"
}
