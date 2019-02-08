resource "aws_ecr_repository" "ecr_repo" {

  tags = "${var.tags}"
  name = "${var.name}"
}
