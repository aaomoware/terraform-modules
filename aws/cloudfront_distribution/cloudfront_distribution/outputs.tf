output "cdn_id" {
  value = "${aws_cloudfront_distribution.s3_distribution.id}"
}
output "cdn_arn" {
  value = "${aws_cloudfront_distribution.s3_distribution.arn}"
}
output "cdn_domain_name" {
  value = "${aws_cloudfront_distribution.s3_distribution.domain_name}"
}
output "cdn_hosted_zone_id" {
  value = "${aws_cloudfront_distribution.s3_distribution.hosted_zone_id}"
}
output "cdn_caller_reference" {
  value = "${aws_cloudfront_distribution.s3_distribution.cdn_caller_reference}"
}
output "cdn_active_trusted_signers" {
  value = "${aws_cloudfront_distribution.s3_distribution.active_trusted_signers}"
}
