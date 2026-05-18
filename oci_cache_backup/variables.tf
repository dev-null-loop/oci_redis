variable "backup_source" {
  description = "(Optional) Specifies whether the backup was created from a replica or primary node"
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "(Required) (Updatable) Compartment identifier"
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) Backup description"
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) Backup display name."
  type        = string
}

variable "export_to_object_storage_trigger" {
  description = "(Optional) (Updatable) An optional property when incremented triggers Export To Object Storage. Could be set to any integer value."
  type        = number
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "retention_period_in_days" {
  description = "(Optional) (Updatable) Backup retention period in days."
  type        = number
  default     = null
}

variable "source_cluster_id" {
  description = "(Required) Oracle Cloud Infrastructure Cache cluster identifier"
  type        = string
}
