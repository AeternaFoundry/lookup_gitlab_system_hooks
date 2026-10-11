data "gitlab_system_hooks" "system_hooks_lookup" {
  for_each = var.system_hooks_lookup

}

