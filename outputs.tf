output "system_hooks_lookup_id" {
  description = "Map of id values across all system_hooks_lookup, keyed the same as var.system_hooks_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_system_hooks.system_hooks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "system_hooks_lookup_hooks" {
  description = "Map of hooks values across all system_hooks_lookup, keyed the same as var.system_hooks_lookup except keys with no hooks are omitted"
  value       = { for k, v in data.gitlab_system_hooks.system_hooks_lookup : k => v.hooks if v.hooks != null && length(v.hooks) > 0 }
}

