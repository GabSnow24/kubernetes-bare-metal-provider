terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "gqzzlabs"

    workspaces {
      name = "aws-gqzzlabs"
    }
  }
}