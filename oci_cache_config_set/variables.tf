variable "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm#Oracle) of the compartment that contains the Oracle Cloud Infrastructure Cache Config Set."
  type        = string
}

variable "configuration_details" {
  description = "List of Oracle Cloud Infrastructure Cache Config Set Values."
  type = object({
    items = list(object({
      config_key   = string
      config_value = string
    }))
  })
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "Description for the custom Oracle Cloud Infrastructure Cache Config Set."
  type        = string
  default     = null
}

variable "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "freeform_tags" {
  description = "Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "software_version" {
  description = "The Oracle Cloud Infrastructure Cache engine version that the cluster is running."
  type        = string
}
