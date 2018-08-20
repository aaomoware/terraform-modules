#### Provides a Direct Connect public virtual interface


###### Variables
```
variable vlan                  {}
variable name                  {}
variable bgp_asn               {}
variable connection_id         {}
variable address_family        {}
variable owner_account_id      {}
variable route_filter_prefixes {}

variable create               { default = "10m" }
variable delete               { default = "10m" }

variable bgp_auth_key          { default = "" }
variable amazon_address        { default = "" }
variable customer_address      { default = "" }
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
[aws_dx_public_virtual_interface](https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html)
