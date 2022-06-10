data "local_file" "users_data" {
  filename = "${path.module}/users.json"
}