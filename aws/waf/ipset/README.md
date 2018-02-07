#### WAF IPSet


###### Variables
```
variable name  { default = "" }
variable type  { default = "" }
variable value { default = "" }
```

##### Outputs
```
output "ipset_id" {
  value = "${aws_waf_ipset.ipset.id}"
}
```

###### Documentation
[aws_waf_ipset](https://www.terraform.io/docs/providers/aws/r/waf_ipset.html)
