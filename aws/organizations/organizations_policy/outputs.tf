output "id" {
  value = "${aws_organizations_policy.op.*.id}"
}
output "arn" {
  value = "${aws_organizations_policy.op.*.arn}"
}
/*
output "map_ids" {
  value = "${zipmap(var.name, aws_organizations_policy.op.*.id)}"
}
output "map_arns" {
  value = "${zipmap(var.name, aws_organizations_policy.op.*.arn)}"
}
*/
