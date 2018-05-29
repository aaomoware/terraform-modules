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
  value = "${aws_cloudtrail.ct_es.0.id}"
}
output "ct_es_arn" {
  value = "${aws_cloudtrail.ct_es.0.id}"
}
output "ct_es_home_region" {
  value = "${aws_cloudtrail.ct_es.0.id}"
}
