terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

module "devops_app" {
  source     = "./modules/docker-image"
  image_name = var.image_name
}
