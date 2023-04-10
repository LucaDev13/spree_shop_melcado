terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable "do_token" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

# Create a web server
resource "digitalocean_droplet" "shop-melcado-web-server" {
  image  = "docker-20-04"
  name   = "shop-melcado-web-server"
  region = "lon1"
  size   = "s-1vcpu-1gb"
}

# Create volume
resource "digitalocean_volume" "melcado-web-volume" {
  region                  = "lon1"
  name                    = "melcado-web-volume"
  size                    = 100
  initial_filesystem_type = "ext4"
  description             = "melcado-web-volume"
}

resource "digitalocean_volume_attachment" "melcado-volume-attachment" {
  droplet_id = digitalocean_droplet.shop-melcado-web-server.id
  volume_id  = digitalocean_volume.melcado-web-volume.id
}

resource "digitalocean_database_db" "melcado-spree-database" {
  cluster_id = digitalocean_database_cluster.melcado-spree-postgres.id
  name       = "melcado-spree-db"
}

resource "digitalocean_database_cluster" "melcado-spree-postgres" {
  name       = "melcado-postgres-cluster"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = "lon1"
  node_count = 1
}