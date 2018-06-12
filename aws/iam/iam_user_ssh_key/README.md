#### IAM User SSHh Key


###### Variables
```
variable status     { default = {} type = "map" }
variable username   { default = [] type = "list" }
variable encoding   { default = {} type = "map" }
variable public_key { default = {} type = "map" }
```

##### Outputs
```
output "fingerprint" {
  value = "${element(concat(aws_iam_user_ssh_key.user_sshk.*.fingerprint,list("")),0)}"
}
output "ssh_public_key_id" {
  value = "${element(concat(aws_iam_user_ssh_key.user_sshk.*.ssh_public_key_id,list("")),0)}"
}
```

###### Documentation
[aws_iam_user_ssh_key](https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html)
