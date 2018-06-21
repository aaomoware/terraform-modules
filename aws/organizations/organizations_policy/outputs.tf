output "id" {
  value = "${aws_organizations_policy.op.*.id}"
}
output "arn" {
  value = "${aws_organizations_policy.op.*.arn}"
}
