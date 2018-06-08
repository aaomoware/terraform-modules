output "id" {
  value = "${element(concat(aws_db_event_subscription.des.id,list("")),0)}"
}
output "arn" {
  value = "${element(concat(aws_db_event_subscription.des.arn,list("")),0)}"
}
output "customer_aws_id" {
  value = "${element(concat(aws_db_event_subscription.des.customer_aws_id,list("")),0)}"
}

#---prefix
output "id_prefix" {
  value = "${element(concat(aws_db_event_subscription.des_prefix.id,list("")),0)}"
}
output "arn_prefix" {
  value = "${element(concat(aws_db_event_subscription.des_prefix.arn,list("")),0)}"
}
output "customer_aws_id_prefix" {
  value = "${element(concat(aws_db_event_subscription.des_prefix.customer_aws_id,list("")),0)}"
}
