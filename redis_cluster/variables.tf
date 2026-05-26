variable "backup_id" {
  description = "(Optional) The ID of the Oracle Cloud Infrastructure Cache Backup from which this cluster was created.Mutually exclusive with 'importFromObjectStorageDetails'."
  type        = string
  default     = null
}

variable "cluster_mode" {
  description = "(Optional) Specifies whether the cluster is sharded or non-sharded."
  type        = string
  default     = "SHARDED"
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the compartment that contains the cluster."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "import_from_object_storage_details" {
  description = "(Optional) Details for importing Oracle Cloud Infrastructure Cache data from Object Storage RDB file(s) during cluster creation."
  type = object({
    bucket    = string
    namespace = string
    objects = list(object({
      object = string
    }))
  })
  default = null
}

variable "node_count" {
  description = "(Required) (Updatable) The number of nodes per shard in the cluster when clusterMode is SHARDED. This is the total number of nodes when clusterMode is NONSHARDED."
  type        = number
}

variable "node_memory_in_gbs" {
  description = "(Required) (Updatable) The amount of memory allocated to the cluster's nodes, in gigabytes."
  type        = number
  validation {
    condition     = !(var.node_memory_in_gbs < 2)
    error_message = "nodeMemoryInGBs must be greater than or equal to 2"
  }
}

variable "nsg_ids" {
  description = "(Optional) (Updatable) A list of Network Security Group (NSG) OCIDs associated with this cluster."
  type        = list(string)
  default     = []
}

variable "shard_count" {
  description = "(Optional) (Updatable) The number of shards in sharded cluster. Only applicable when clusterMode is SHARDED."
  type        = number
  default     = 3
}

variable "software_version" {
  description = "(Required) (Updatable) The Oracle Cloud Infrastructure Cache engine version that the cluster is running."
  type        = string
  validation {
    condition     = contains(["V7_0_5", "REDIS_7_0"], var.software_version)
    error_message = "Supported values are: V7_0_5,REDIS_7_0"
  }
}

variable "oci_cache_config_set_id" {
  description = "(Optional) (Updatable) The ID of the corresponding Oracle Cloud Infrastructure Cache Config Set for the cluster."
  type        = string
  default     = null
}

variable "security_attributes" {
  description = "(Optional) (Updatable) Security attributes for redis cluster resource. Each key is predefined and scoped to a namespace. Example: `{\"Oracle-ZPR\": {\"MaxEgressCount\": {\"value\": \"42\", \"mode\": \"enforce\"}}}`"
  type        = map(string)
  default     = null
}

variable "subnet_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the cluster's subnet."
  type        = string
}
