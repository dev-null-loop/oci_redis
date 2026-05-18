variable "defined_tags" {
  description = "(Optional) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "public_key" {
  description = "(Required) User public key pair"
  type        = string
}

variable "redis_cluster_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the cluster."
  type        = string
}

variable "redis_user" {
  description = "(Required) Redis User generating identity token."
  type        = string
}
