output "ltga_id" {
  value = "${element(concat(aws_lb_target_group.ltga.*.id, list("")), 0)}"
}
output "ltga_arn" {
  value = "${element(concat(aws_lb_target_group.ltga.*.arn, list("")), 0)}"
}
output "ltga_name" {
  value = "${element(concat(aws_lb_target_group.ltga.*.name, list("")), 0)}"
}
output "ltga_arn_suffix" {
  value = "${element(concat(aws_lb_target_group.ltga.*.arn_suffix, list("")), 0)}"
}


output "ltgn_id" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.id, lists("")), 0)}"
}
output "ltgn_arn" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.arn, lists("")), 0)}"
}
output "ltgn_name" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.name, lists("")), 0)}"
}
output "ltgn_arn_suffix" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.arn_suffix, list("")), 0)}"
}
