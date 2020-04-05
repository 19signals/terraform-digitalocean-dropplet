locals {
  droplet_id                   = "${compact(concat(digitalocean_droplet.droplet.*.id, list("")))}"
  droplet_ipv4_address         = "${compact(concat(digitalocean_droplet.droplet.*.ipv4_address, list("")))}"
  droplet_ipv4_address_private = "${compact(concat(digitalocean_droplet.droplet.*.ipv4_address_private, list("")))}"
  droplet_ipv6_address         = "${compact(concat(digitalocean_droplet.droplet.*.ipv6_address, list("")))}"
  droplet_region               = "${compact(concat(digitalocean_droplet.droplet.*.region, list("")))}"
  droplet_name                 = "${compact(concat(digitalocean_droplet.droplet.*.name, list("")))}"
  droplet_size                 = "${compact(concat(digitalocean_droplet.droplet.*.size, list("")))}"
  droplet_image                = "${compact(concat(digitalocean_droplet.droplet.*.image, list("")))}"
}

output "droplet_id" {
  description = "List of IDs of Droplets"
  value       = local.droplet_id
}

output "image" {
  description = "List of images of Droplets"
  value       = local.droplet_image
}

output "ipv4_address" {
  description = "List of public IPv4 addresses assigned to the Droplets"
  value       = local.droplet_ipv4_address
}

output "ipv4_address_private" {
  description = "List of private IPv4 addresses assigned to the Droplets, if applicable"
  value       = local.droplet_ipv4_address_private
}

output "ipv6_address" {
  description = "List of public IPv6 addresses assigned to the Droplets, if applicable"
  value       = local.droplet_ipv6_address
}

output "name" {
  description = "List of names of Droplets"
  value       = local.droplet_name
}

output "region" {
  description = "List of regions of Droplets"
  value       = local.droplet_region
}

output "size" {
  description = "List of sizes of Droplets"
  value       = local.droplet_size
}