resource "oci_redis_oci_cache_user" "this" {
  acl_string     = var.acl_string
  compartment_id = var.compartment_id
  description    = var.description
  name           = var.name
  defined_tags   = var.defined_tags
  freeform_tags  = var.freeform_tags
  status         = var.status
  authentication_mode {
    authentication_type = var.authentication_mode.authentication_type
    hashed_passwords    = var.authentication_mode.hashed_passwords
  }
}
