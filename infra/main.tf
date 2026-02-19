terraform {
  required_version = ">= 1.3.0"
}

module "hetzner_mc_server" {
  source = "git::https://github.com/dotunwrap/terraform-hetzner-mc-server.git//module?ref=v1.0.0"

  hcloud_token = var.hcloud_token

  name = "the-rape-alley"

  public_ssh_key  = var.public_ssh_key
  private_ssh_key = var.private_ssh_key

  server_type     = "ccx13"
  server_location = "ash"

  volume_size = 50

  mc_server_type       = "forge"
  mc_version           = "1.20.1"
  mc_modloader_version = "47.4.10"
  mc_mods              = sort([for f in fileset(path.module, "../.mods/*.jar") : f])

  server_properties = {
    "enable-rcon"       = "true"
    "enforce-whitelist" = "true"
    "max-players"       = "2"
    "motd"              = "I love you <3"
    "rcon.password"     = var.rcon_password
    "rcon.port"         = var.rcon_port
    "view-distance"     = "16"
    "white-list"        = "true"
  }

  whitelist_users = [
    {
      name = "unwrap_or_else"
      uuid = "74fb5abb-16bf-4aee-b841-dcbae9c75c95"
    },
    {
      name = "yoshee4232"
      uuid = "94daaabf-29b2-4adf-9f46-22309ef2e979"
    }
  ]

  op_users = [
    {
      uuid                = "74fb5abb-16bf-4aee-b841-dcbae9c75c95"
      name                = "unwrap_or_else"
      level               = 4
      bypassesPlayerLimit = true
    },
    {
      uuid                = "94daaabf-29b2-4adf-9f46-22309ef2e979"
      name                = "yoshee4232"
      level               = 4
      bypassesPlayerLimit = true
    }
  ]
}
