#  Manages an EC2 Transit Gateway.


Manages an EC2 Transit Gateway.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|amazon_side_asn | Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs. | integer | 64512 | no |
|auto_accept_shared_attachments | Whether resource attachment requests are automatically accepted. Valid values: disable, enable. | string | disable | no |
|default_route_table_association | Whether resource attachments are automatically associated with the default association route table. Valid values: disable, enable. | string | enable | no |
|default_route_table_propagation | Whether resource attachments automatically propagate routes to the default propagation route table. Valid values: disable, enable. | string | enable | no |
|description | Description of the EC2 Transit Gateway.| string | - | no |
|dns_support | Whether DNS support is enabled. Valid values: disable, enable. | string | enable | no |
|tags | Key-value tags for the EC2 Transit Gateway.| map | - | no |
|vpn_ecmp_support | Whether VPN Equal Cost Multipath Protocol support is enabled. Valid values: disable, enable. | string | enable | no |



## Outputs

| Name | Description |
|------|-------------|
|arn | EC2 Transit Gateway Amazon Resource Name (ARN)|
|association_default_route_table_id | Identifier of the default association route table|
|id | EC2 Transit Gateway identifier|
|owner_id | Identifier of the AWS account that owns the EC2 Transit Gateway|
|propagation_default_route_table_id | Identifier of the default propagation route table|

###### Documentation
[aws_ec2_transit_gateway](https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html)
