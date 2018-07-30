#### aws_security_group


###### Variables
All variables are assigned defaults.
````
variable name                     { default = "" }
variable tags                     { default = {} type = "map" }
variable vpc_id                   { default = "" }
variable description              { default = "" }
variable revoke_rules_on_delete   { default = false }
````

###### OUtputs:
```
output "id" {
  value = "${aws_security_group.sg.id}"
}
```


###### Documentation
[aws_security_group](https://www.terraform.io/docs/providers/aws/r/security_group.html)
