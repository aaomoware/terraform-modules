output "ed_arn" {
  value = "${aws_elasticsearch_domain.ed.arn}"
}
output "ed_endpoint" {
  value = "${aws_elasticsearch_domain.ed.endpoint}"
}
output "ed_domain_id" {
  value = "${aws_elasticsearch_domain.ed.domain_id}"
}
output "ed_kibana_endpoint" {
  value = "${aws_elasticsearch_domain.ed.kibana_endpoint}"
}
