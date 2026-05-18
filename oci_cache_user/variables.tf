variable "acl_string" {
  description = "(Required) (Updatable) ACL string of Oracle Cloud Infrastructure cache user."
  type        = string
}

variable "authentication_mode" {
  description = "(Required) (Updatable) These are the Authentication details of an Oracle Cloud Infrastructure cache user."
  type = object({
    authentication_type = string
    hashed_passwords    = optional(list(string))
  })

  validation {
    condition     = contains(["IAM", "PASSWORD"], upper(var.authentication_mode.authentication_type))
    error_message = "Supported values are: IAM, PASSWORD"
  }

  validation {
    condition = upper(var.authentication_mode.authentication_type) != "PASSWORD" || (
      var.authentication_mode.hashed_passwords != null && length(var.authentication_mode.hashed_passwords) > 0
    )
    error_message = "hashed_passwords must be provided when authentication_type is PASSWORD."
  }
}

variable "compartment_id" {
  description = "(Required) (Updatable) Oracle Cloud Infrastructure cache user compartment ID."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Required) (Updatable) Description of Oracle Cloud Infrastructure cache user."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "(Required) Oracle Cloud Infrastructure cache user name is required to connect to an Oracle Cloud Infrastructure cache cluster."
  type        = string
}

variable "status" {
  description = "(Optional) (Updatable) Oracle Cloud Infrastructure cache user status. ON enables and OFF disables the Oracle Cloud Infrastructure cache user to login to the associated clusters. Default value is ON."
  type        = string
  default     = null
}
