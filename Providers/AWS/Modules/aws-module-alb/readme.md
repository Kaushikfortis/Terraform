## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_lb_target_group_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group_attachment) | resource |
| [aws_instances.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/instances) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS infrastructure region | `string` | `null` | no |
| <a name="input_enable_deletion_protection"></a> [enable\_deletion\_protection](#input\_enable\_deletion\_protection) | enable\_deletion\_protection true or false | `bool` | `false` | no |
| <a name="input_internal"></a> [internal](#input\_internal) | Internal true or false | `bool` | `false` | no |
| <a name="input_lb_listener_port"></a> [lb\_listener\_port](#input\_lb\_listener\_port) | lb\_listener\_port | `number` | `80` | no |
| <a name="input_lb_listener_protocol"></a> [lb\_listener\_protocol](#input\_lb\_listener\_protocol) | lb\_listener\_protocol HTTP, TCP, TLS | `string` | `"HTTP"` | no |
| <a name="input_lb_protocol"></a> [lb\_protocol](#input\_lb\_protocol) | lb\_protocol HTTP (ALB) or TCP (NLB) | `string` | `"HTTP"` | no |
| <a name="input_lb_target_port"></a> [lb\_target\_port](#input\_lb\_target\_port) | lb\_target\_port 80 or 443 | `number` | `80` | no |
| <a name="input_lb_target_tags_lmap"></a> [lb\_target\_tags\_lmap](#input\_lb\_target\_tags\_lmap) | List of Tag map for the LB target resources | <pre>list(object({<br>    name  = string<br>    value = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_lb_target_tags_map"></a> [lb\_target\_tags\_map](#input\_lb\_target\_tags\_map) | Tag map for the LB target resources | `map(string)` | `{}` | no |
| <a name="input_lb_target_type"></a> [lb\_target\_type](#input\_lb\_target\_type) | Target type ip (ALB/NLB), instance (Autosaling group) | `string` | `"ip"` | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Application or Network type LB | `string` | `"application"` | no |
| <a name="input_name"></a> [name](#input\_name) | LB name | `string` | `"lb"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | LB security groups | `list(string)` | `[]` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | LB subnets | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tag map for the resource | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | vpc\_id | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data_aws_instance_id"></a> [data\_aws\_instance\_id](#output\_data\_aws\_instance\_id) | data\_aws\_instance\_id |
| <a name="output_data_aws_instance_ids"></a> [data\_aws\_instance\_ids](#output\_data\_aws\_instance\_ids) | data\_aws\_instance\_ids |
| <a name="output_lb_arn"></a> [lb\_arn](#output\_lb\_arn) | LB ARN |
| <a name="output_lb_id"></a> [lb\_id](#output\_lb\_id) | LB id |
| <a name="output_lb_tg_arn"></a> [lb\_tg\_arn](#output\_lb\_tg\_arn) | LB Target group ARN |
| <a name="output_lb_tg_id"></a> [lb\_tg\_id](#output\_lb\_tg\_id) | LB Target group id |
