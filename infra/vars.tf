variable "hcloud_token" {
  type        = string
  description = "Hetzner Cloud API token"
  sensitive   = true
}

variable "public_ssh_key" {
  type        = string
  description = "SSH public key"
}

variable "private_ssh_key" {
  type        = string
  description = "SSH private key"
  sensitive   = true
}

variable "rcon_password" {
  type        = string
  description = "The password for rcon connections"
  sensitive   = true
}

variable "rcon_port" {
  type        = string
  description = "The port for rcon connections"
  sensitive   = true
}
