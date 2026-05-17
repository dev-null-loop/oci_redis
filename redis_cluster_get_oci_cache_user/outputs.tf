output "id" {
  description = "The ID of the resource."
  value       = oci_redis_redis_cluster_get_oci_cache_user.this.id
}

output "oci_cache_users" {
  description = "The attached Oracle Cloud Infrastructure Cache users."
  value       = oci_redis_redis_cluster_get_oci_cache_user.this.oci_cache_users
}
