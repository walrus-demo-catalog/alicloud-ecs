## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_instance.example](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/resources/instance) | resource |
| [null_resource.health_check](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [alicloud_security_groups.default](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/data-sources/security_groups) | data source |
| [alicloud_vpcs.default](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/data-sources/vpcs) | data source |
| [alicloud_vswitches.default](https://registry.terraform.io/providers/hashicorp/alicloud/latest/docs/data-sources/vswitches) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname of the ECS instance | `string` | `""` | no |
| <a name="input_image_id"></a> [image\_id](#input\_image\_id) | The ID of the image used to launch the ECS instance | `string` | `"ubuntu_18_04_x64_20G_alibase_20230208.vhd"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type of the ECS instance | `string` | `"ecs.s6-c1m2.small"` | no |
| <a name="input_internet_charge_type"></a> [internet\_charge\_type](#input\_internet\_charge\_type) | The billing method of the public network bandwidth | `string` | `"PayByTraffic"` | no |
| <a name="input_internet_max_bandwidth_out"></a> [internet\_max\_bandwidth\_out](#input\_internet\_max\_bandwidth\_out) | The maximum outbound bandwidth of the public network | `number` | `5` | no |
| <a name="input_system_disk_category"></a> [system\_disk\_category](#input\_system\_disk\_category) | The category of the system disk | `string` | `"cloud_efficiency"` | no |
| <a name="input_system_disk_size"></a> [system\_disk\_size](#input\_system\_disk\_size) | The size of the system disk, value range: [20, 500] | `number` | `40` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_primary_ip_address"></a> [primary\_ip\_address](#output\_primary\_ip\_address) | n/a |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
