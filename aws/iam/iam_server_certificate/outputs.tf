output "cert_id" {
  valid = "${aws_iam_server_certificate.cert.id}"
}
output "cert_arn" {
  valid = "${aws_iam_server_certificate.cert.arn}"
}
output "cert_name" {
  valid = "${aws_iam_server_certificate.cert.name}"
}


output "cert_prefix_aid" {
  valid = "${aws_iam_server_certificate.cert_prefix.id}"
}
output "cert_prefix_arn" {
  valid = "${aws_iam_server_certificate.cert_prefix.arn}"
}
output "cert_prefix_name" {
  valid = "${aws_iam_server_certificate.cert_prefix.name}"
}
