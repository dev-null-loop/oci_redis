variable "oci_cache_users" {
  description = "(Required) List of Oracle Cloud Infrastructure cache user unique IDs (OCIDs)."
  type        = list(string)
}

variable "redis_cluster_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the cluster."
  type        = string
}
