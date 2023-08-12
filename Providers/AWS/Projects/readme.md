## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_lb"></a> [aws\_lb](#module\_aws\_lb) | ../../modules/e2esa-module-aws-elb | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_autoscaling_policy.scale_down](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_autoscaling_policy.scale_up](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy) | resource |
| [aws_cloudwatch_metric_alarm.scale_down_alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_cloudwatch_metric_alarm.scale_up_alarm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_launch_template.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asg_health_check_type"></a> [asg\_health\_check\_type](#input\_asg\_health\_check\_type) | n/a | `any` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | General | `any` | n/a | yes |
| <a name="input_createdby"></a> [createdby](#input\_createdby) | n/a | `any` | n/a | yes |
| <a name="input_desired_capacity"></a> [desired\_capacity](#input\_desired\_capacity) | n/a | `any` | n/a | yes |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | n/a | `any` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `any` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | n/a | `any` | n/a | yes |
| <a name="input_lb_enable_deletion_protection"></a> [lb\_enable\_deletion\_protection](#input\_lb\_enable\_deletion\_protection) | n/a | `any` | n/a | yes |
| <a name="input_lb_internal"></a> [lb\_internal](#input\_lb\_internal) | n/a | `any` | n/a | yes |
| <a name="input_lb_listener_port"></a> [lb\_listener\_port](#input\_lb\_listener\_port) | n/a | `any` | n/a | yes |
| <a name="input_lb_listener_protocol"></a> [lb\_listener\_protocol](#input\_lb\_listener\_protocol) | n/a | `any` | n/a | yes |
| <a name="input_lb_load_balancer_type"></a> [lb\_load\_balancer\_type](#input\_lb\_load\_balancer\_type) | n/a | `any` | n/a | yes |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | Load Balancer | `any` | n/a | yes |
| <a name="input_lb_protocol"></a> [lb\_protocol](#input\_lb\_protocol) | n/a | `any` | n/a | yes |
| <a name="input_lb_security_groups"></a> [lb\_security\_groups](#input\_lb\_security\_groups) | n/a | `any` | n/a | yes |
| <a name="input_lb_subnets"></a> [lb\_subnets](#input\_lb\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_lb_target_port"></a> [lb\_target\_port](#input\_lb\_target\_port) | n/a | `any` | n/a | yes |
| <a name="input_lb_target_type"></a> [lb\_target\_type](#input\_lb\_target\_type) | n/a | `any` | n/a | yes |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Auto Scaling | `any` | n/a | yes |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | n/a | `any` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Tags | `any` | n/a | yes |
| <a name="input_target_group_arns"></a> [target\_group\_arns](#input\_target\_group\_arns) | n/a | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `any` | n/a | yes |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asg_arn"></a> [asg\_arn](#output\_asg\_arn) | Auto Scaling Group ARN |

