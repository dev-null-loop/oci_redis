output "backup_size_in_gbs" {
  description = "Backup size in GB."
  value       = oci_redis_oci_cache_backup.this.backup_size_in_gbs
}

output "backup_source" {
  description = "Specifies whether the backup was created from a replica or primary node"
  value       = oci_redis_oci_cache_backup.this.backup_source
}

output "backup_type" {
  description = "Backup Type."
  value       = oci_redis_oci_cache_backup.this.backup_type
}

output "cluster_memory_in_gbs" {
  description = "The amount of memory allocated to the cluster, in gigabytes."
  value       = oci_redis_oci_cache_backup.this.cluster_memory_in_gbs
}

output "cluster_mode" {
  description = "Specifies whether the cluster is sharded or non-sharded."
  value       = oci_redis_oci_cache_backup.this.cluster_mode
}

output "compartment_id" {
  description = "Backup compartment identifier"
  value       = oci_redis_oci_cache_backup.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_redis_oci_cache_backup.this.defined_tags
}

output "description" {
  description = "Backup description"
  value       = oci_redis_oci_cache_backup.this.description
}

output "display_name" {
  description = "Backup display name"
  value       = oci_redis_oci_cache_backup.this.display_name
}

output "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  value       = oci_redis_oci_cache_backup.this.freeform_tags
}

output "id" {
  description = "Unique identifier that is immutable on creation"
  value       = oci_redis_oci_cache_backup.this.id
}

output "retention_period_in_days" {
  description = "Backup retention period in days."
  value       = oci_redis_oci_cache_backup.this.retention_period_in_days
}

output "shard_count" {
  description = "The number of shards in a sharded cluster. Only applicable when clusterMode is SHARDED."
  value       = oci_redis_oci_cache_backup.this.shard_count
}

output "software_version" {
  description = "The Oracle Cloud Infrastructure Cache engine version that the cluster is running."
  value       = oci_redis_oci_cache_backup.this.software_version
}

output "source_cluster_id" {
  description = "The source Oracle Cloud Infrastructure Cache Cluster OCID."
  value       = oci_redis_oci_cache_backup.this.source_cluster_id
}

output "state" {
  description = "The current state of the backup."
  value       = oci_redis_oci_cache_backup.this.state
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces."
  value       = oci_redis_oci_cache_backup.this.system_tags
}

output "time_created" {
  description = "The date and time the backup was created."
  value       = oci_redis_oci_cache_backup.this.time_created
}

output "time_updated" {
  description = "The date and time the backup was updated."
  value       = oci_redis_oci_cache_backup.this.time_updated
}
