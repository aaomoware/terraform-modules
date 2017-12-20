resource "aws_route53_delegation_set" "route53_delegation_set" {
  count = "${length(var.reference_name)}"
  reference_name = "${element(var.reference_name,count.index)}"
}
