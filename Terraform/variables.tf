# TF variables for the infrastructure

# This is given at runtime to avoid having API credentials on Git
variable "do_token" {
  type = "string"
}

# OS Image used when creating the droplet
variable "droplet_image" {
  type = "string"
  default = "ubuntu-17-04-x64"
}

# Human friendly droplet name
variable "droplet_name" {
  type = "string"
  default = "blog"
}

# Region to launch droplet in
variable "droplet_region" {
  type = "string"
  default = "ams-2"
}

# Size of droplet
variable "droplet_size" {
  type = "string"
  default = "1gb"
}

# SSH key ID to associate, passed at runtime
variable "ssh_fingerprint" {
  type = "string"
}

variable "pub_ssh_key" {
  type = "string"
}

variable "priv_ssh_key" {
  type = "string"
}