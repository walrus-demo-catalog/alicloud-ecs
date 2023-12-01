resource "alicloud_instance" "ecs" {
  instance_name        = var.instance_name
  instance_type        = data.alicloud_instance_types.types_ds.instance_types.0.id
  image_id             = data.alicloud_images.images_ds.images.0.id
  system_disk_category = var.system_disk_category
  system_disk_size     = var.system_disk_size

  internet_charge_type       = var.internet_charge_type
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  vswitch_id                 = data.alicloud_vswitches.default.vswitches.0.id
  security_groups = [
    data.alicloud_security_groups.default.groups.0.id
  ]

  host_name = var.instance_name
  key_name  = var.key_name

  user_data = var.init_script
}

data "alicloud_vpcs" "default" {
  name_regex = "default"
}

data "alicloud_vswitches" "default" {
  vpc_id = data.alicloud_vpcs.default.vpcs.0.id
}

data "alicloud_security_groups" "default" {
  name_regex = "default"
  vpc_id     = data.alicloud_vpcs.default.vpcs.0.id
}

data "alicloud_instance_types" "types_ds" {
  cpu_core_count    = var.cpu_core_count
  memory_size       = var.memory_size
  availability_zone = data.alicloud_vswitches.default.vswitches.0.zone_id
}

data "alicloud_images" "images_ds" {
  instance_type = data.alicloud_instance_types.types_ds.instance_types.0.id
  owners        = "system"
  architecture  = "x86_64"
  name_regex    = var.image_regex
}
