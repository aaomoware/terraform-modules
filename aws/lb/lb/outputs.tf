output "alm_id" {
  value = "${element(concat(aws_lb.alm.*.id, list("")), 0)}"
}
output "alm_arn" {
  value = "${element(concat(aws_lb.alm.*.arn, list("")), 0)}"
}
output "alm_zone_id" {
  value = "${element(concat(aws_lb.alm.*.zone_id, list("")), 0)}"
}
output "alm_dns_name" {
  value = "${element(concat(aws_lb.alm.*.dns_name, list("")), 0)}"
}
output "alm_arn_suffix" {
  value = "${element(concat(aws_lb.alm.*.arn_suffix, list("")), 0)}"
}
output "alm_canonical_hosted_zone_id" {
  value = "${element(concat(aws_lb.alm.*.canonical_hosted_zone_id, list("")), 0)}"
}


output "al_id" {
  value = "${element(concat(aws_lb.al.*.id, list("")), 0)}"
}
output "al_arn" {
  value = "${element(concat(aws_lb.al.*.arn, list("")), 0)}"
}
output "al_zone_id" {
  value = "${element(concat(aws_lb.al.*.zone_id, list("")), 0)}"
}
output "al_dns_name" {
  value = "${element(concat(aws_lb.al.*.dns_name, list("")), 0)}"
}
output "al_arn_suffix" {
  value = "${element(concat(aws_lb.al.*.arn_suffix, list("")), 0)}"
}
output "al_canonical_hosted_zone_id" {
  value = "${element(concat(aws_lb.al.*.canonical_hosted_zone_id, list("")), 0)}"
}


output "am_id" {
  value = "${element(concat(aws_lb.am.*.id, list("")), 0)}"
}
output "am_arn" {
  value = "${element(concat(aws_lb.am.*.arn, list("")), 0)}"
}
output "am_zone_id" {
  value = "${element(concat(aws_lb.am.*.zone_id, list("")), 0)}"
}
output "am_dns_name" {
  value = "${element(concat(aws_lb.am.*.dns_name, list("")), 0)}"
}
output "am_arn_suffix" {
  value = "${element(concat(aws_lb.am.*.arn_suffix, list("")), 0)}"
}
output "am_canonical_hosted_zone_id" {
  value = "${element(concat(aws_lb.am.*.canonical_hosted_zone_id, list("")), 0)}"
}


output "a_id" {
  value = "${element(concat(aws_lb.a.*.id, list("")), 0)}"
}
output "a_arn" {
  value = "${element(concat(aws_lb.a.*.arn, list("")), 0)}"
}
output "a_zone_id" {
  value = "${element(concat(aws_lb.a.*.zone_id, list("")), 0)}"
}
output "a_dns_name" {
  value = "${element(concat(aws_lb.a.*.dns_name, list("")), 0)}"
}
output "a_arn_suffix" {
  value = "${element(concat(aws_lb.a.*.arn_suffix, list("")), 0)}"
}
output "a_canonical_hosted_zone_id" {
  value = "${element(concat(aws_lb.a.*.canonical_hosted_zone_id, list("")), 0)}"
}


#---Network
output "nm_id" {
  value = "${element(concat(aws_lb.nm.*.id, list("")), 0)}"
}
output "nm_arn" {
  value = "${element(concat(aws_lb.nm.*.arn, list("")), 0)}"
}
output "nm_zone_id" {
  value = "${element(concat(aws_lb.nm.*.zone_id, list("")), 0)}"
}
output "nm_dns_name" {
  value = "${element(concat(aws_lb.nm.*.dns_name, list("")), 0)}"
}
output "nm_arn_suffix" {
  value = "${element(concat(aws_lb.nm.*.arn_suffix, list("")), 0)}"
}
output "nm_canonical_hosted_zone_id" {
  value = "${element(concat(aws_lb.nm.*.canonical_hosted_zone_id, list("")), 0)}"
}


output "n_id" {
  value = "${element(concat(aws_lb.n.*.id, list("")), 0)}"
}
output "n_arn" {
  value = "${element(concat(aws_lb.n.*.arn, list("")), 0)}"
}
output "n_zone_id" {
  value = "${element(concat(aws_lb.n.*.zone_id, list("")), 0)}"
}
output "n_dns_name" {
  value = "${element(concat(aws_lb.n.*.dns_name, list("")), 0)}"
}
output "n_arn_suffix" {
  value = "${element(concat(aws_lb.n.*.arn_suffix, list("")), 0)}"
}
output "n_canonical_hosted_zone_id" {
  value = "${element(concat(aws_lb.n.*.canonical_hosted_zone_id, list("")), 0)}"
}
