output "networkmanager_core_network_policy_attachments_id" {
  description = "Map of id values across all networkmanager_core_network_policy_attachments, keyed the same as var.networkmanager_core_network_policy_attachments"
  value       = { for k, v in aws_networkmanager_core_network_policy_attachment.networkmanager_core_network_policy_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networkmanager_core_network_policy_attachments_core_network_id" {
  description = "Map of core_network_id values across all networkmanager_core_network_policy_attachments, keyed the same as var.networkmanager_core_network_policy_attachments"
  value       = { for k, v in aws_networkmanager_core_network_policy_attachment.networkmanager_core_network_policy_attachments : k => v.core_network_id if v.core_network_id != null && length(v.core_network_id) > 0 }
}
output "networkmanager_core_network_policy_attachments_policy_document" {
  description = "Map of policy_document values across all networkmanager_core_network_policy_attachments, keyed the same as var.networkmanager_core_network_policy_attachments"
  value       = { for k, v in aws_networkmanager_core_network_policy_attachment.networkmanager_core_network_policy_attachments : k => v.policy_document if v.policy_document != null && length(v.policy_document) > 0 }
}
output "networkmanager_core_network_policy_attachments_state" {
  description = "Map of state values across all networkmanager_core_network_policy_attachments, keyed the same as var.networkmanager_core_network_policy_attachments"
  value       = { for k, v in aws_networkmanager_core_network_policy_attachment.networkmanager_core_network_policy_attachments : k => v.state if v.state != null && length(v.state) > 0 }
}

