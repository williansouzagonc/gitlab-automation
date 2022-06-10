locals {
  users_data = [
      for user in jsondecode(data.local_file.users_data.content).users : {
        name      = user.name
        username  = user.username
        email     = user.email
      }
  ]
}