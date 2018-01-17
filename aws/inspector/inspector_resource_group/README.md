#### Inspector Resource Group


###### Variables
```
variable env  { default = "" }
variable name { default = "" }
```

##### Outputs
```
resource "aws_inspector_resource_group" "irg" {
  tags {
    Env  = "${var.env}"
    Name = "${var.name}"
  }
}
```

###### Documentation
[aws_inspector_resource_group](https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html)
