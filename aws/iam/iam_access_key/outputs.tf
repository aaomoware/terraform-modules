output "ak_id" {
  value = "${aws_iam_access_key.ak.id}"
}

output "ak_user" {
  value = "${aws_iam_access_key.ak.user}"
}

output "ak_secret_encrypted_secret" {
  value = "${var.pgp_key == "" ? "N/A" : aws_iam_access_key.ak.encrypted_secret}"
}

output "ak_key_fingerprint" {
  value = "${var.pgp_key == "" ? "N/A" : aws_iam_access_key.ak.key_fingerprint}"
}

output "ak_secret_ses_smtp_password" {
  value = "${aws_iam_access_key.ak.ses_smtp_password}"
}
