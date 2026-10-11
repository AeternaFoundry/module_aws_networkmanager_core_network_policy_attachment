variable "networkmanager_core_network_policy_attachments" {
  description = <<EOT
Map of networkmanager_core_network_policy_attachments, attributes below
Required:
    - core_network_id
    - policy_document
EOT

  type = map(object({
    core_network_id = string
    policy_document = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_core_network_policy_attachments : (
        (length(v.core_network_id) >= 0 && length(v.core_network_id) <= 50) && (can(regex("^core-network-([0-9a-f]{8,17})$", v.core_network_id)))
      )
    ])
    error_message = "all of: must be between 0 and 50 characters; must be a valid Core Network ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_core_network_policy_attachments : (
        (length(v.policy_document) >= 0 && length(v.policy_document) <= 10000000) && (can(jsondecode(v.policy_document)))
      )
    ])
    error_message = "all of: must be between 0 and 10000000 characters; must be valid JSON"
  }
}

