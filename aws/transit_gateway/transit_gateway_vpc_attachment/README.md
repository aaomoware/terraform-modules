####  Transit Gateway VPC Attachment


Manages an EC2 Transit Gateway VPC Attachment. For examples of custom route table association and propagation, see the EC2 Transit Gateway Networking Examples Guide.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|subnet_ids | Identifiers of EC2 Subnets. | list | - | yes |
|transit_gateway_id | Identifier of EC2 Transit Gateway. | string | - | yes |
|vpc_id | Identifier of EC2 VPC. | string | - | yes |
|dns_support | Whether DNS support is enabled. Valid values: disable, enable. | string | enable | no |
|ipv6_support | Whether IPv6 support is enabled. Valid values: disable, enable.| string | disable | no |
|tags | Key-value tags for the EC2 Transit Gateway VPC Attachment. | map | - | no |
|transit_gateway_default_route_table_association | Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. | boolean | true | no |
|transit_gateway_default_route_table_propagation | Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. | boolean | true | no |


## Outputs

| Name | Description |
|------|-------------|
|id | EC2 Transit Gateway Attachment identifier |
|vpc_owner_id | Identifier of the AWS account that owns the EC2 VPC. |

###### Documentation
[aws_ec2_transit_gateway_vpc_attachment](https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html)
