resource "aws_organizations_organization" "oo" {
  feature_set = "${var.feature_set}"
}
