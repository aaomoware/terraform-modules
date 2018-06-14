output "id" {
  value = "${aws_iam_role_policy.irp.*.id}"
}
output "role" {
  value = "${aws_iam_role_policy.irp.*.role}"
}
output "name" {
  value = "${aws_iam_role_policy.irp.*.name}"
}
output "policy" {
  value = "${aws_iam_role_policy.irp.*.policy}"
}
