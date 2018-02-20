resource "aws_codecommit_repository" "cr" {
  description     = "${var.description}"
  default_branch  = "${var.default_branch}"
  repository_name = "${var.repository_name}"
}
