#### Direct Connect Gateway


###### Variables
```
variable name {}
variable create { default = "10m" }
variable delete { default = "10m" }
variable amazon_side_asn {}
```

##### Outputs
```
output "id" {
  value = "${aws_dx_gateway.dg.id}"
}
```

###### Documentation
[aws_dx_gateway](https://www.terraform.io/docs/providers/aws/r/dx_gateway.html)
