variable "compartment_id" {
  description = "(Optional) The ID of the compartment in which to list resources."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) A filter to return only resources that match the entire display name given."
  type        = string
  default     = null
}

variable "redis_cluster_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the cluster."
  type        = string
}
