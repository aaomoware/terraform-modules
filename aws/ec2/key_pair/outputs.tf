output "key_name" {
  value = "${aws_key_pair.key_pair.key_name}"
}

output "fingerprint" {
  value = "${aws_key_pair.key_pair.fingerprint}"
}
