output "origin_access_identity_id" {
  value = "${aws_cloudfront_origin_access_identity.origin_access_identity.id}"
}
output "origin_access_identity_iam_arn" {
  value = "${aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn}"
}
