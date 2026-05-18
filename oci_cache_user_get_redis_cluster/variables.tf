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

variable "oci_cache_user_id" {
  description = "(Required) A filter to return only resources, that match with the given Oracle Cloud Infrastructure cache user ID (OCID)."
  type        = string
}
