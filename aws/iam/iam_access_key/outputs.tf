output "ak_id" {
  value = "${element(concat(aws_iam_access_key.ak.*.id,list("")),0)}"
}
output "ak_user" {
  value = "${element(concat(aws_iam_access_key.ak.*.user,list("")),0)}"
}
output "ak_secret_key" {
  value = "${element(concat(aws_iam_access_key.ak.*.secret,list("")),0)}"
}
output "ak_key_fingerprint" {
  value = "${element(concat(aws_iam_access_key.ak.*.key_fingerprint,list("")),0)}"
}
output "ak_secret_ses_smtp_password" {
  value = "${element(concat(aws_iam_access_key.ak.*.ses_smtp_password,list("")),0)}"
}
