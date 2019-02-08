output "repository" {
  value = "${aws_ecr_lifecycle_policy.ecr_lc_policy.repository}"
}

output "repository_id" {
  value = "${aws_ecr_lifecycle_policy.ecr_lc_policy.repository_id}"
}
