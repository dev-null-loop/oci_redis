output "id" {
  description = "The ID of the resource."
  value       = oci_redis_oci_cache_user_get_redis_cluster.this.id
}

output "oci_cache_clusters" {
  description = "The attached Oracle Cloud Infrastructure Cache clusters."
  value       = oci_redis_oci_cache_user_get_redis_cluster.this.oci_cache_clusters
}
