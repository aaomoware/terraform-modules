output "lesm_uuid" {
  value = "${aws_lambda_event_source_mapping.lesm.uuid}"
}
output "lesm_function_arn" {
  value = "${aws_lambda_event_source_mapping.lesm.function_arn}"
}
