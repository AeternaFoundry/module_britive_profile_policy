variable "profile_policies" {
  description = <<EOT
Map of profile_policies, attributes below
Required:
    - policy_name
    - profile_id
Optional:
    - access_type
    - condition
    - consumer
    - description
    - is_active
    - is_draft
    - is_read_only
    - members
    - associations (block):
        - type (required)
        - value (required)
    - tag_associations (block):
        - key (required)
        - values (required)
EOT

  type = map(object({
    policy_name  = string
    profile_id   = string
    access_type  = optional(string)
    condition    = optional(string)
    consumer     = optional(string)
    description  = optional(string)
    is_active    = optional(bool)
    is_draft     = optional(bool)
    is_read_only = optional(bool)
    members      = optional(string)
    associations = optional(list(object({
      type  = string
      value = string
    })))
    tag_associations = optional(list(object({
      key    = string
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.profile_policies : (
        length(v.profile_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_policies : (
        length(v.policy_name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_policies : (
        v.members == null || (length(v.members) >= 1)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_policies : (
        v.associations == null || alltrue([for item in v.associations : (contains(["Environment", "EnvironmentGroup"], item.type))])
      )
    ])
    error_message = "must be one of: \"Environment\", \"EnvironmentGroup\""
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_policies : (
        v.associations == null || alltrue([for item in v.associations : (length(item.value) >= 1)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_policies : (
        v.tag_associations == null || alltrue([for item in v.tag_associations : (length(item.key) >= 1)])
      )
    ])
    error_message = "must not be empty"
  }
}

