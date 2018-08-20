#### Provides a Direct Connect private virtual interface


###### Variables
```

variable name             {}
variable vlan             {}
variable bgp_asn          {}
variable connection_id    {}
variable address_family   {}

variable create           { default = "10m" }
variable delete           { default = "10m" }

variable tags             { default = "" }
variable bgp_auth_key     { default = "" }
variable dx_gateway_id    { default = "" }
variable vpn_gateway_id   { default = "" }
variable amazon_address   { default = "" }
variable customer_address { default = "" }

```

##### Outputs
```
output "id" {
  value = "${aws_dx_private_virtual_interface.dpvi.id}"
}
output "arn" {
  value = "${aws_dx_private_virtual_interface.dpvi.arn}"
}
```

###### Documentation
[aws_dx_private_virtual_interface](https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html)
