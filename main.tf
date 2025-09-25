terraform {
  required_version = ">= 1.0.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.23.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
  # if on Windows Docker Desktop, use:
  # host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = "terraform-nginx"
  image = "nginx:latest"

  ports {
    internal = 80
    external = 8080
  }

  env = [
    "EXAMPLE_VAR=terraform"
  ]

  restart = "on-failure"
}

output "container_id" {
  value = docker_container.nginx.id
}

output "container_name" {
  value = docker_container.nginx.name
}
