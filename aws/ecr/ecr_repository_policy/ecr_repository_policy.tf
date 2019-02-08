resource "ecr_repository_policy" "repo_policy" {
  policy = "${var.policy}"
  repository = "${var.repository}"
}
