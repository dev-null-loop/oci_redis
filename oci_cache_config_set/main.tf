resource "oci_redis_oci_cache_config_set" "this" {
  compartment_id = var.compartment_id
  configuration_details {
    items {
      config_key   = var.configuration_details.items.config_key
      config_value = var.configuration_details.items.config_value
    }
  }
  display_name     = var.oci_cache_config_set_display_name
  software_version = var.oci_cache_config_set_software_version
  defined_tags     = var.defined_tags
  description      = var.oci_cache_config_set_description
  freeform_tags    = var.freeform_tags
}
