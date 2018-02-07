output "oj_id" {
  value = "${aws_s3_bucket_object.object.id}"
}
output "oj_etag" {
  value = "${aws_s3_bucket_object.object.etag}"
}
output "oj_version_id" {
  value = "${aws_s3_bucket_object.object.version_id}"
}
