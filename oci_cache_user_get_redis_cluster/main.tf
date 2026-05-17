resource "oci_redis_oci_cache_user_get_redis_cluster" "this" {
  oci_cache_user_id = var.oci_cache_user_id
  compartment_id    = var.compartment_id
  display_name      = var.display_name
}
