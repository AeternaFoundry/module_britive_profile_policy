output "profile_policies_id" {
  description = "Map of id values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.id }
}
output "profile_policies_access_type" {
  description = "Map of access_type values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.access_type }
}
output "profile_policies_associations" {
  description = "Map of associations values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.associations }
}
output "profile_policies_condition" {
  description = "Map of condition values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.condition }
}
output "profile_policies_consumer" {
  description = "Map of consumer values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.consumer }
}
output "profile_policies_description" {
  description = "Map of description values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.description }
}
output "profile_policies_is_active" {
  description = "Map of is_active values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.is_active }
}
output "profile_policies_is_draft" {
  description = "Map of is_draft values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.is_draft }
}
output "profile_policies_is_read_only" {
  description = "Map of is_read_only values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.is_read_only }
}
output "profile_policies_members" {
  description = "Map of members values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.members }
}
output "profile_policies_policy_name" {
  description = "Map of policy_name values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.policy_name }
}
output "profile_policies_profile_id" {
  description = "Map of profile_id values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.profile_id }
}
output "profile_policies_tag_associations" {
  description = "Map of tag_associations values across all profile_policies, keyed the same as var.profile_policies"
  value       = { for k, v in britive_profile_policy.profile_policies : k => v.tag_associations }
}

