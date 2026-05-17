output "id" {
  description = "The ID of the resource."
  value       = oci_redis_oci_cache_config_setlist_associated_oci_cache_cluster.this.id
}

output "items" {
  description = "List of clusters with the same Oracle Cloud Infrastructure Cache Config Set ID."
  value       = oci_redis_oci_cache_config_setlist_associated_oci_cache_cluster.this.items
}
