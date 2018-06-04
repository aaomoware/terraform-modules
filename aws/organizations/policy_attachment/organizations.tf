resource "aws_organizations_policy_attachment" "opa" {
  policy_id = "${var.policy_id}"
  target_id = "${var.target_id}"
}
