output "acl_string" {
  description = "ACL string of Oracle Cloud Infrastructure cache user."
  value       = oci_redis_oci_cache_user.this.acl_string
}

output "authentication_mode" {
  description = "These are the Authentication details of an Oracle Cloud Infrastructure cache user."
  value       = oci_redis_oci_cache_user.this.authentication_mode
  sensitive   = true
}

output "compartment_id" {
  description = "Oracle Cloud Infrastructure Cache user compartment ID."
  value       = oci_redis_oci_cache_user.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  value       = oci_redis_oci_cache_user.this.defined_tags
}

output "description" {
  description = "Description of Oracle Cloud Infrastructure cache user."
  value       = oci_redis_oci_cache_user.this.description
}

output "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  value       = oci_redis_oci_cache_user.this.freeform_tags
}

output "id" {
  description = "Oracle Cloud Infrastructure Cache user unique ID."
  value       = oci_redis_oci_cache_user.this.id
}

output "name" {
  description = "Oracle Cloud Infrastructure Cache user name."
  value       = oci_redis_oci_cache_user.this.name
}

output "state" {
  description = "Oracle Cloud Infrastructure Cache user lifecycle state."
  value       = oci_redis_oci_cache_user.this.state
}

output "status" {
  description = "Oracle Cloud Infrastructure Cache user status. ON enables and OFF disables the Oracle Cloud Infrastructure cache user to login to the cluster."
  value       = oci_redis_oci_cache_user.this.status
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_redis_oci_cache_user.this.system_tags
}

output "time_created" {
  description = "The date and time, when the Oracle Cloud Infrastructure cache user was created."
  value       = oci_redis_oci_cache_user.this.time_created
}

output "time_updated" {
  description = "The date and time, when the Oracle Cloud Infrastructure cache user was updated."
  value       = oci_redis_oci_cache_user.this.time_updated
}
