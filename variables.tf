variable "team_members_lookup" {
  description = <<EOT
Map of team_members_lookup, attributes below
Required:
    - team_id
EOT

  type = map(object({
    team_id = string
  }))
}

