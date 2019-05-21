####  Step Function Activity


Manages an EC2 Transit Gateway Route.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|destination_cidr_block | IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.| string | - | yes |
|transit_gateway_attachment_id | Identifier of EC2 Transit Gateway Attachment.| string | - | yes |
|transit_gateway_route_table_id | Identifier of EC2 Transit Gateway Route Table.| string | - | yes |



## Outputs

| Name | Description |
|------|-------------|
|id | EC2 Transit Gateway Route Table identifier combined with destination|


###### Documentation
[aws_ec2_transit_gateway_route](https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html)
