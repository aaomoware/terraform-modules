#### IAM Server Certificate


###### Variables
```
variable name              { default = "" }
variable prefix            { default = true }
variable cert_path         { default = "" }
variable private_key       { default = "" }
variable name_prefix       { default = "" }
variable certificate_body  { default = "" }
variable certificate_chain { default = "" }
```

##### Outputs
```
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
```

###### Documentation
[aws_iam_server_certificate](https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html)
