#### Provides a resource to manage the accepter's side of a Direct Connect hosted public virtual interface


###### Variables
```
variable tags                 { default = {} type = "map" }
variable create               { default = "10m" }
variable delete               { default = "10m" }
variable virtual_interface_id {}
```

##### Outputs
```
output "id" {
  value = "${aws_dx_hosted_public_virtual_interface.dhpvi.id}"
}
output "arn" {
  value = "${aws_dx_hosted_public_virtual_interface.dhpvi.arn}"
}
```

###### Documentation
[aws_dx_hosted_public_virtual_interface_accepter](https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html)
