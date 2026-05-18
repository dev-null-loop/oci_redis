variable "bucket" {
  description = "(Required) The target Object Storage bucket name."
  type        = string
}

variable "namespace" {
  description = "(Required) The Object Storage namespace name."
  type        = string
}

variable "oci_cache_backup_id" {
  description = "(Required) Unique Oracle Cloud Infrastructure Cache Backup identifier."
  type        = string
}

variable "prefix" {
  description = "(Optional) Optional prefix under which the service will place the exported object(s)."
  type        = string
  default     = null
}
