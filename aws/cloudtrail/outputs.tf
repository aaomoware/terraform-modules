output "ct_id" {
  value = "${element(concat(aws_cloudtrail.ct.*.id, list("")), 0)}"
}

output "ct_arn" {
  value = "${element(concat(aws_cloudtrail.ct.*.arn, list("")), 0)}"
}

output "ct_home_region" {
  value = "${element(concat(aws_cloudtrail.ct.*.home_region, list("")), 0)}"
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
