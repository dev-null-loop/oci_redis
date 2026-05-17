output "id" {
  description = "The ID of the resource."
  value       = oci_redis_redis_cluster_create_identity_token.this.id
}

output "identity_token" {
  description = "Generated Identity token"
  value       = oci_redis_redis_cluster_create_identity_token.this.identity_token
  sensitive   = true
}

output "redis_user" {
  description = "Redis user for the newly created identity token"
  value       = oci_redis_redis_cluster_create_identity_token.this.redis_user
}
