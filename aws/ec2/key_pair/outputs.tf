output "key_name" {
  value = "${module.key_pair.key_name}"
}

output "fingerprint" {
  value = "${module.key_pair.fingerprint}"
}
