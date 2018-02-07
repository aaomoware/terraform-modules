#### WAF Regional IPSet


###### Variables
```
variable name  { default = "" }
variable type  { default = "" }
variable value { default = "" }
```

##### Outputs
```
output "ipset_id" {
  value = "${aws_wafregional_ipset.ipset.id}"
}
```

###### Documentation
[aws_wafregional_ipset](https://www.terraform.io/docs/providers/aws/r/wafregional_ipset.html)
