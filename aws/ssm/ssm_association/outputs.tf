output "ssma_name" {
  value = "${aws_ssm_association.ssma.name}"
}
output "ssma_parameters" {
  value = "${aws_ssm_association.ssma.parameters}"
}
output "ssma_instance_ids" {
  value = "${aws_ssm_association.ssma.instance_ids}"
}
