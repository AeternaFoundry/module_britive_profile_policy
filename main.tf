resource "britive_profile_policy" "profile_policies" {
  for_each = var.profile_policies

  policy_name  = each.value.policy_name
  profile_id   = each.value.profile_id
  access_type  = each.value.access_type
  condition    = each.value.condition
  consumer     = each.value.consumer
  description  = each.value.description
  is_active    = each.value.is_active
  is_draft     = each.value.is_draft
  is_read_only = each.value.is_read_only
  members      = each.value.members

  dynamic "associations" {
    for_each = each.value.associations != null ? each.value.associations : []
    content {
      type  = associations.value.type
      value = associations.value.value
    }
  }

  dynamic "tag_associations" {
    for_each = each.value.tag_associations != null ? each.value.tag_associations : []
    content {
      key    = tag_associations.value.key
      values = tag_associations.value.values
    }
  }
}

