output "ct_id" {
  value = "${aws_cloudtrail.ct.id}"
}
output "ct_arn" {
  value = "${aws_cloudtrail.ct.id}"
}
output "ct_home_region" {
  value = "${aws_cloudtrail.ct.id}"
}

output "ct_es_id" {
  value = "${element(concat(aws_cloudtrail.ct_es.*.id, list("")), 0)}"
}
output "ct_es_arn" {
  value = "${element(concat(aws_cloudtrail.ct_es.*.arn, list("")), 0)}"
}
output "ct_es_home_region" {
  value = "${element(concat(aws_cloudtrail.ct_es.*.home_region, list("")), 0)}"
}
