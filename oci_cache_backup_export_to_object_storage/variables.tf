variable "bucket" {
  description = "The target Object Storage bucket name."
  type        = string
}

variable "namespace" {
  description = "The Object Storage namespace name."
  type        = string
}

variable "oci_cache_backup_id" {
  description = "Unique Oracle Cloud Infrastructure Cache Backup identifier."
  type        = string
}

variable "prefix" {
  description = "Optional prefix under which the service will place the exported object(s)."
  type        = string
  default     = null
}
