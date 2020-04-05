locals {
  // Map of pre-named sizes to look up from
  sizes = {
    nano      = "s-1vcpu-1gb"
    micro     = "s-2vcpu-2gb"
    small     = "s-2vcpu-4gb"
    medium    = "s-4vcpu-8gb"
    large     = "s-6vcpu-16gb"
    x-large   = "s-8vcpu-32gb"
    xx-large  = "s-16vcpu-64gb"
    xxx-large = "s-24vcpu-128gb"
    maximum   = "s-32vcpu-192gb"
  }
}

// Create Droplets
resource "digitalocean_droplet" "droplet" {

  count = var.droplet_count

  image = var.image_id
  name  = format("%s-%s", var.team_name, format("%s-%s", var.region[count.index], format(var.number_format, count.index + 1)))

  region = var.region[count.index]
  size   = coalesce(local.sizes[var.droplet_size], var.droplet_size)

  // Optional
  backups            = var.backups
  ipv6               = var.ipv6
  private_networking = var.private_networking
  ssh_keys           = var.ssh_keys
}