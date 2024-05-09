# Arc
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db"></a> [db](#module\_db) | ./modules/rds | n/a |
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_networking"></a> [networking](#module\_networking) | ./modules/networking | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | n/a | `number` | n/a | yes |
| <a name="input_allow_major_version_upgrade"></a> [allow\_major\_version\_upgrade](#input\_allow\_major\_version\_upgrade) | n/a | `bool` | n/a | yes |
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | n/a | `bool` | `null` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | n/a | `bool` | n/a | yes |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | variable "option\_group\_name" { type = string } | `string` | `null` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | list of availability zones | `list(string)` | <pre>[<br>  "us-east-2a",<br>  "us-east-2b"<br>]</pre> | no |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | n/a | `number` | n/a | yes |
| <a name="input_backup_window"></a> [backup\_window](#input\_backup\_window) | n/a | `string` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | n/a | `string` | n/a | yes |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | variable "master\_user\_secret\_kms\_key\_id" { type    = string default = null } variable "vpc\_security\_group\_ids" { type = list[string] } | `string` | n/a | yes |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | n/a | `bool` | n/a | yes |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | n/a | `list(string)` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | n/a | `string` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | n/a | `string` | `null` | no |
| <a name="input_family"></a> [family](#input\_family) | } | `string` | n/a | yes |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | n/a | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 Instance Type | `string` | `"t2.micro"` | no |
| <a name="input_key_pair_name"></a> [key\_pair\_name](#input\_key\_pair\_name) | n/a | `string` | `"demo-key"` | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | n/a | `string` | `null` | no |
| <a name="input_manage_master_user_password"></a> [manage\_master\_user\_password](#input\_manage\_master\_user\_password) | n/a | `bool` | `true` | no |
| <a name="input_max_allocated_storage"></a> [max\_allocated\_storage](#input\_max\_allocated\_storage) | n/a | `number` | `null` | no |
| <a name="input_multi_az"></a> [multi\_az](#input\_multi\_az) | n/a | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the vpc | `string` | `"arc-demo"` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_private_subnets_cidr"></a> [private\_subnets\_cidr](#input\_private\_subnets\_cidr) | list of private subnet CIDR blocks | `list(string)` | <pre>[<br>  "172.29.31.64/27",<br>  "172.29.31.96/27"<br>]</pre> | no |
| <a name="input_public_subnets_cidr"></a> [public\_subnets\_cidr](#input\_public\_subnets\_cidr) | list of public subnet CIDR blocks | `list(string)` | <pre>[<br>  "172.29.31.0/27",<br>  "172.29.31.32/27"<br>]</pre> | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | n/a | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region where the resources need to be created | `string` | `"us-east-2"` | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | n/a | `bool` | n/a | yes |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | n/a | `bool` | `true` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | n/a | `string` | `null` | no |
| <a name="input_username"></a> [username](#input\_username) | n/a | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR range for vpc | `string` | `"172.29.31.0/25"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Name of the vpc | `string` | `"arc-demo"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ami_id"></a> [ami\_id](#output\_ami\_id) | n/a |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | n/a |
| <a name="output_public_subnets_cidr"></a> [public\_subnets\_cidr](#output\_public\_subnets\_cidr) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
