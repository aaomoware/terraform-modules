output "fingerprint" {
  value = "${element(concat(aws_iam_user_ssh_key.user_sshk.*.fingerprint,list("")),0)}"
}
output "ssh_public_key_id" {
  value = "${element(concat(aws_iam_user_ssh_key.user_sshk.*.ssh_public_key_id,list("")),0)}"
}
