output "fingerprint" {
  value = "${aws_iam_user_ssh_key.user_sshk.*.fingerprint}"
}
output "ssh_public_key_id" {
  value = "${aws_iam_user_ssh_key.user_sshk.*.ssh_public_key_id}"
}
