terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "3.15.0"
    }
  }
}

provider "gitlab" {
  token = "PLACE_YOUR_TOKEN"
}