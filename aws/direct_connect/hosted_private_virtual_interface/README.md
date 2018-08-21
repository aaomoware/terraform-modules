#### Direct Connect hosted private virtual interfaces


###### Variables
```
variable owner_account_id {}

variable vlan             { type = "list" }
variable name             { type = "list" }
variable bgp_asn          { type = "list" }
variable connection_id    { type = "list" }

variable create           { default = "10m" }
variable delete           { default = "10m" }
variable address_family   { default = "ipv4" }

variable bgp_auth_key     { default = "" }
variable amazon_address   { default = "" }
variable customer_address { default = "" }
```

##### Outputs
```
output "id" {
  value = "${aws_dx_hosted_private_virtual_interface.dhpvi.*.id}"
}

output "arn" {
  value = "${aws_dx_hosted_private_virtual_interface.dhpvi.*.arn}"
}
```

###### Documentation
[aws_dx_hosted_private_virtual_interface](https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html)
