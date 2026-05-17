resource "oci_redis_oci_cache_config_set" "this" {
  compartment_id = var.compartment_id
  configuration_details {
    dynamic "items" {
      for_each = var.configuration_details.items
      iterator = it
      content {
        config_key   = it.value.config_key
        config_value = it.value.config_value
      }
    }
  }
  display_name     = var.display_name
  software_version = var.software_version
  defined_tags     = var.defined_tags
  description      = var.description
  freeform_tags    = var.freeform_tags
}
