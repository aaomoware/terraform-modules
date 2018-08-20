#### Provides a resource to manage the accepter's side of a Direct Connect hosted private virtual interface


###### Variables
```
variable tags                 { default = "" }
variable dx_gateway_id        { default = "" }
variable vpn_gateway_id       { default = "" }
variable virtual_interface_id {}

variable create               { default = "10m" }
variable delete               { default = "10m" }
```

##### Outputs
```
output "id" {
  value = "${aws_dx_hosted_private_virtual_interface_accepter.dhpvia.id}"
}

output "arn" {
  value = "${aws_dx_hosted_private_virtual_interface_accepter.dhpvia.arn}"
}
```

###### Documentation
[aws_dx_hosted_private_virtual_interface_accepter](https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html)
