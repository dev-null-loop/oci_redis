output "backup_id" {
  description = "The ID of the Oracle Cloud Infrastructure Cache Backup from which this cluster was created."
  value       = oci_redis_redis_cluster.this.backup_id
}

output "cluster_mode" {
  description = "Specifies whether the cluster is sharded or non-sharded."
  value       = oci_redis_redis_cluster.this.cluster_mode
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the cluster."
  value       = oci_redis_redis_cluster.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_redis_redis_cluster.this.defined_tags
}

output "discovery_endpoint_ip_address" {
  description = "The private IP address of the API endpoint for sharded cluster discovery."
  value       = oci_redis_redis_cluster.this.discovery_endpoint_ip_address
}

output "discovery_fqdn" {
  description = "The fully qualified domain name of the API endpoint for sharded cluster discovery."
  value       = oci_redis_redis_cluster.this.discovery_fqdn
}

output "display_name" {
  description = "A user-friendly name."
  value       = oci_redis_redis_cluster.this.display_name
}

output "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope."
  value       = oci_redis_redis_cluster.this.freeform_tags
}

output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the cluster."
  value       = oci_redis_redis_cluster.this.id
}

output "import_from_object_storage_details" {
  description = "Details for importing Oracle Cloud Infrastructure Cache data from Object Storage RDB file(s) during cluster creation."
  value       = oci_redis_redis_cluster.this.import_from_object_storage_details
}

output "lifecycle_details" {
  description = "A message describing the current state in more detail."
  value       = oci_redis_redis_cluster.this.lifecycle_details
}

output "node_collection" {
  description = "The collection of cluster nodes."
  value       = oci_redis_redis_cluster.this.node_collection
}

output "node_count" {
  description = "The number of nodes per shard in the cluster when clusterMode is SHARDED. This is the total number of nodes when clusterMode is NONSHARDED."
  value       = oci_redis_redis_cluster.this.node_count
}

output "node_memory_in_gbs" {
  description = "The amount of memory allocated to the cluster's nodes, in gigabytes."
  value       = oci_redis_redis_cluster.this.node_memory_in_gbs
}

output "nsg_ids" {
  description = "A list of Network Security Group (NSG) OCIDs associated with this cluster."
  value       = oci_redis_redis_cluster.this.nsg_ids
}

output "oci_cache_config_set_id" {
  description = "The ID of the corresponding Oracle Cloud Infrastructure Cache Config Set for the cluster."
  value       = oci_redis_redis_cluster.this.oci_cache_config_set_id
}

output "primary_endpoint_ip_address" {
  description = "The private IP address of the API endpoint for the cluster's primary node."
  value       = oci_redis_redis_cluster.this.primary_endpoint_ip_address
}

output "primary_fqdn" {
  description = "The fully qualified domain name of the API endpoint for the cluster's primary node."
  value       = oci_redis_redis_cluster.this.primary_fqdn
}

output "replicas_endpoint_ip_address" {
  description = "The private IP address of the API endpoint for the cluster's replica nodes."
  value       = oci_redis_redis_cluster.this.replicas_endpoint_ip_address
}

output "replicas_fqdn" {
  description = "The fully qualified domain name of the API endpoint for the cluster's replica nodes."
  value       = oci_redis_redis_cluster.this.replicas_fqdn
}

output "security_attributes" {
  description = "Security attributes for redis cluster resource."
  value       = oci_redis_redis_cluster.this.security_attributes
}

output "shard_count" {
  description = "The number of shards in a sharded cluster. Only applicable when clusterMode is SHARDED."
  value       = oci_redis_redis_cluster.this.shard_count
}

output "software_version" {
  description = "The Oracle Cloud Infrastructure Cache engine version that the cluster is running."
  value       = oci_redis_redis_cluster.this.software_version
}

output "state" {
  description = "The current state of the cluster."
  value       = oci_redis_redis_cluster.this.state
}

output "subnet_id" {
  description = "The OCID of the cluster's subnet."
  value       = oci_redis_redis_cluster.this.subnet_id
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces."
  value       = oci_redis_redis_cluster.this.system_tags
}

output "time_created" {
  description = "The date and time the cluster was created."
  value       = oci_redis_redis_cluster.this.time_created
}

output "time_updated" {
  description = "The date and time the cluster was updated."
  value       = oci_redis_redis_cluster.this.time_updated
}
