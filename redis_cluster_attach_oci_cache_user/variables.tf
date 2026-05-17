variable "oci_cache_users" {
  description = "List of Oracle Cloud Infrastructure cache user unique IDs (OCIDs)."
  type        = list(string)
}

variable "redis_cluster_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the cluster."
  type        = string
}
