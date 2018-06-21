output "id" {
  value = "${aws_organizations_policy.op.*.id}"
}
output "arn" {
  value = "${aws_organizations_policy.op.*.arn}"
}
output "map_ids" {
  value = "${length(aws_organizations_policy.op.*.id) == 0 ? var.empty_map : zipmap(var.name, aws_organizations_policy.op.*.id)}"
}
output "map_arns" {
  value = "${length(aws_organizations_policy.op.*.arn) == 0 ? var.empty_map : zipmap(var.name, aws_organizations_policy.op.*.arn)}"
}
