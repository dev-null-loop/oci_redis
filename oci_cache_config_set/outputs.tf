output "compartment_id" {
  description = "The OCID of the compartment that contains the Oracle Cloud Infrastructure Cache Config Set."
  value       = oci_redis_oci_cache_config_set.this.compartment_id
}

output "configuration_details" {
  description = "List of Oracle Cloud Infrastructure Cache Config Set Values."
  value       = oci_redis_oci_cache_config_set.this.configuration_details
}

output "default_config_set_id" {
  description = "The OCID of the default Oracle Cloud Infrastructure Cache Config Set which the custom Oracle Cloud Infrastructure Cache Config Set is based upon."
  value       = oci_redis_oci_cache_config_set.this.default_config_set_id
}

output "defined_tags" {
  description = "Defined tags for this resource."
  value       = oci_redis_oci_cache_config_set.this.defined_tags
}

output "description" {
  description = "A description of the Oracle Cloud Infrastructure Cache Config Set."
  value       = oci_redis_oci_cache_config_set.this.description
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable."
  value       = oci_redis_oci_cache_config_set.this.display_name
}

output "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only."
  value       = oci_redis_oci_cache_config_set.this.freeform_tags
}

output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the Oracle Cloud Infrastructure Cache Config Set."
  value       = oci_redis_oci_cache_config_set.this.id
}

output "software_version" {
  description = "The Oracle Cloud Infrastructure Cache engine version that the cluster is running."
  value       = oci_redis_oci_cache_config_set.this.software_version
}

output "state" {
  description = "The current state of the Oracle Cloud Infrastructure Cache Config Set."
  value       = oci_redis_oci_cache_config_set.this.state
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces."
  value       = oci_redis_oci_cache_config_set.this.system_tags
}

output "time_created" {
  description = "The date and time the Oracle Cloud Infrastructure Cache Config Set was created."
  value       = oci_redis_oci_cache_config_set.this.time_created
}

output "time_updated" {
  description = "The date and time the Oracle Cloud Infrastructure Cache Config Set was updated."
  value       = oci_redis_oci_cache_config_set.this.time_updated
}
