#### Inspector Resource Group


###### Variables
```
variable env  { default = "" }
variable name { default = "" }
```

##### Outputs
```
output "irg_arn" {
  value = "${aws_inspector_resource_group.irg.arn}"
}
```

###### Documentation
[aws_inspector_resource_group](https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html)
