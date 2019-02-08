resource "aws_ecr_lifecycle_policy" "ecr_lc_policy" {

  policy = "${var.policy}"
  repository = "${var.repository}"
}
