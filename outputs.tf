output "team_members_lookup_id" {
  description = "Map of id values across all team_members_lookup, keyed the same as var.team_members_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_team_members.team_members_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_members_lookup_members" {
  description = "Map of members values across all team_members_lookup, keyed the same as var.team_members_lookup except keys with no members are omitted"
  value       = { for k, v in data.pagerduty_team_members.team_members_lookup : k => v.members if v.members != null && length(v.members) > 0 }
}
output "team_members_lookup_team_id" {
  description = "Map of team_id values across all team_members_lookup, keyed the same as var.team_members_lookup except keys with no team_id are omitted"
  value       = { for k, v in data.pagerduty_team_members.team_members_lookup : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}

