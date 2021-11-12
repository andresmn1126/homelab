terraform {
  backend "remote" {
    organization = "personal_automation"

    workspaces {
      name = "home"
    }
  }
}