resource "oci_redis_redis_cluster_get_oci_cache_user" "this" {
  redis_cluster_id = var.redis_cluster_id
  compartment_id   = var.compartment_id
  display_name     = var.display_name
}
