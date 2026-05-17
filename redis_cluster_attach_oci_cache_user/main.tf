resource "oci_redis_redis_cluster_attach_oci_cache_user" "this" {
  oci_cache_users  = var.oci_cache_users
  redis_cluster_id = var.redis_cluster_id
}
