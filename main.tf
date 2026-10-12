data "pagerduty_team_members" "team_members_lookup" {
  for_each = var.team_members_lookup

  team_id = each.value.team_id
}

