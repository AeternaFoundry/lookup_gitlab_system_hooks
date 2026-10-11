variable "system_hooks_lookup" {
  description = <<EOT
Map of system_hooks_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

