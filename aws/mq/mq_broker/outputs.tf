output "mb_id" {
  valid = "${aws_mq_broker.mb.id}"
}
output "mb_arn" {
  valid = "${aws_mq_broker.mb.arn}"
}
output "mb_instances" {
  valid = "${aws_mq_broker.mb.instances}"
}
