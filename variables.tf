variable "backups" {
  description = "(Optional) Boolean controlling if backups are made. Defaults to false."
  default     = false
}

variable "droplet_count" {
  description = "The number of droplets / other resources to create"
  default     = 1
}

variable "team_name"{}

variable "droplet_name" {
  description = "The name of the droplet. If more than one droplet it is appended with the count, examples: stg-web, stg-web-01, stg-web-02"
}

variable "droplet_size" {
  description = "the size slug of a droplet size"
  default     = "micro"
}

variable "image_id" {
  description = "The id of an image to use."
  default     = "53893572"
}

variable "image_name" {
  description = "The image name or slug to lookup."
  default     = "ubuntu-18-04-x64"
}

variable "ipv6" {
  description = "(Optional) Boolean controlling if IPv6 is enabled. Defaults to false."
  default     = false
}

variable "number_format" {
  description = "The number format used to output."
  default     = "%02d"
}

variable "private_networking" {
  description = "(Optional) Boolean controlling if private networks are enabled. Defaults to false."
  default     = false
}

variable "region" {
  description = "The Digitalocean datacenter to create resources in."
  default     = []
}

variable "ssh_keys" {
  description = "(Optional) A list of SSH IDs or fingerprints to enable in the format [12345, 123456]. To retrieve this info, use a tool such as curl with the DigitalOcean API, to retrieve them."
  default     = []
}