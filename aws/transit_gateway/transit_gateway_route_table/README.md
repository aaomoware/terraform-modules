####  Manages an EC2 Transit Gateway Route Table.


Manages an EC2 Transit Gateway Route Table.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|transit_gateway_id | Identifier of EC2 Transit Gateway | string | - | yes |
|tags | Key-value tags for the EC2 Transit Gateway Route Table | string | - | no |


## Outputs

| Name | Description |
|------|-------------|
|default_association_route_table | Boolean whether this is the default association route table for the EC2 Transit Gateway |
|default_propagation_route_table | Boolean whether this is the default propagation route table for the EC2 Transit Gateway |
|id | EC2 Transit Gateway Route Table identifier|


###### Documentation
[aws_ec2_transit_gateway_route_table](https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html)
