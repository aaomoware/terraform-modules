#### IAM Openid Connect Provider


###### Variables
```
variable url             { default = "" }
variable client_id_list  { default = [] type = "list" }
variable thumbprint_list { default = [] type = "list" }
```

##### Outputs
```
output "ocp_arn" {
  value = "${aws_iam_openid_connect_provider.ocp.arn}"
}
```

###### Documentation
[aws_iam_openid_connect_provider](https://www.terraform.io/docs/providers/aws/r/iam_openid_connect_provider.html)
