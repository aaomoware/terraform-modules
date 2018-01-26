output "ssm_id" {
  value = "${aws_sfn_state_machine.ssm.id}"
}
output "ssm_status" {
  value = "${aws_sfn_state_machine.ssm.status}"
}
output "ssm_creation_date" {
  value = "${aws_sfn_state_machine.ssm.creation_date}"
}
