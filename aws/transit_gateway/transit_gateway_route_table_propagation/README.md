#### Transit Gateway Route Table propagation


Manages an EC2 Transit Gateway Route Table propagation.



## Variables
| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|transit_gateway_attachment_id | Identifier of EC2 Transit Gateway Attachment | string | - | yes |
|transit_gateway_route_table_id | Identifier of EC2 Transit Gateway Route Table | string | - | yes |


## Outputs

| Name | Description |
|------|-------------|
|id | EC2 Transit Gateway Route Table identifier combined with EC2 Transit Gateway Attachment identifier |
|resource_id | Identifier of the resource |
|resource_type | Type of the resource |


###### Documentation
[aws_ec2_transit_gateway_route_table_propagation](https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html)
