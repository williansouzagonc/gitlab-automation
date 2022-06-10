resource "gitlab_user" "developers" {
  for_each         = { 
    for u in local.users_data : u.username => u 
  }
  name             = each.value.name
  username         = each.value.username
  email            = each.value.email
  is_admin         = false
  projects_limit   = 0
  can_create_group = false
  is_external      = false
  reset_password   = true
}
