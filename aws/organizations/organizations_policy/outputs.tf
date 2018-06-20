output "id" {
  value = "${aws_organizations_policy.*.id}"
}
output "arn" {
  value = "${aws_organizations_policy.*.arn}"
}
output "map_ids" {
  value = "${zipmap(var.name, aws_organizations_policy.*.id)}"
}
output "map_arns" {
  value = "${zipmap(var.name, aws_organizations_policy.*.arn)}"
}
