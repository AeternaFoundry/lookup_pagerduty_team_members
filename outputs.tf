output "team_members_lookup_id" {
  description = "Map of id values across all team_members_lookup, keyed the same as var.team_members_lookup"
  value       = { for k, v in data.pagerduty_team_members.team_members_lookup : k => v.id }
}
output "team_members_lookup_members" {
  description = "Map of members values across all team_members_lookup, keyed the same as var.team_members_lookup"
  value       = { for k, v in data.pagerduty_team_members.team_members_lookup : k => v.members }
}
output "team_members_lookup_team_id" {
  description = "Map of team_id values across all team_members_lookup, keyed the same as var.team_members_lookup"
  value       = { for k, v in data.pagerduty_team_members.team_members_lookup : k => v.team_id }
}

