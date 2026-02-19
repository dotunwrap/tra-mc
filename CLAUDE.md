# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Minecraft modded server infrastructure repository that manages a Forge 1.20.1 server deployment on Hetzner Cloud using Terraform. The project automates mod management through a custom download/lock system and provisions infrastructure as code.

## Architecture

### Mod Management System

The project uses a custom dependency management system for Minecraft mods:

- `mods.json`: Source of truth mapping mod names to download URLs (from Modrinth/CurseForge)
- `mods.lock`: Generated lockfile with blake3 checksums and file sizes for reproducibility
- `scripts/download.sh`: Downloads mods from `mods.json`, verifies against `mods.lock`, removes orphaned files
- `scripts/lock.sh`: Generates `mods.lock` from downloaded files in `.mods/`
- `.mods/`: Directory containing all downloaded mod JAR files (gitignored)

The download script implements smart caching - it only downloads mods when the lockfile doesn't exist, files are missing, or checksums don't match.

### Infrastructure

- `infra/main.tf`: Terraform configuration using the `terraform-hetzner-mc-server` module
- Provisions a Hetzner Cloud server (ccx13, 50GB volume) running Forge 1.20.1
- Automatically uploads all JAR files from `.mods/` to the server
- Configures server properties, whitelist, and operator permissions
- Uses Terraform Cloud for remote state management

### Nix Development Environment

- `flake.nix`: Main flake defining the project
- `flake/devshell.nix`: Development shell with required tools (just, jq, b3sum, terraform, gh)
- `flake/checks.nix`: CI checks for nixfmt and terraform formatting

### CI/CD

- `.github/workflows/ci.yml`: Runs Nix checks, generates Terraform plan comments on PRs
- `.github/workflows/cd.yml`: Auto-applies Terraform changes when `infra/` is modified on main
- `.github/actions/install-mods/`: Reusable action for mod installation

## Common Commands

### Mod Management

```bash
# Install/update mods from mods.json
just install
# or
./scripts/download.sh

# Clean install (removes all existing mods and lockfile)
just clean-install

# Regenerate lock file from existing mods
just lock

# Add a new mod (manual JSON editing)
just mod "Mod Name" "https://url-to-mod.jar"
```

### Infrastructure

```bash
# View Terraform plan
just plan

# Apply infrastructure changes
just apply

# Format Nix and Terraform files
just fmt

# Lock Terraform providers for multiple platforms
just tflock
```

### Development

```bash
# Enter Nix development shell (provides all required tools)
nix develop

# Run Nix flake checks
nix flake check
```

## Key Implementation Details

### Adding a New Mod

1. Add entry to `mods.json` with mod name as key and download URL as value
2. Run `just install` to download the mod and update the lockfile
3. The mod will be automatically included in the next Terraform deployment

### Modifying Infrastructure

- All Terraform variables are set via environment variables or GitHub secrets
- Server configuration is in `infra/main.tf` (server_properties, whitelist_users, op_users)
- Changes to `infra/` on the main branch trigger automatic deployment via CD workflow
- The Terraform module handles all server setup, including Forge installation and mod uploads

### Lockfile System

The lockfile ensures reproducible builds by storing:
- File path (`.mods/<filename>.jar`)
- File size in bytes
- Blake3 checksum (prefixed with `blake3:`)

This allows the download script to skip downloads when files match the lockfile, making repeated builds faster.

## Required Environment Setup

For local Terraform operations, set these environment variables or create `infra/terraform.tfvars`:
- `TF_VAR_hcloud_token`: Hetzner Cloud API token
- `TF_VAR_public_ssh_key`: SSH public key for server access
- `TF_VAR_private_ssh_key`: SSH private key for provisioning
- `TF_VAR_rcon_password`: RCON password for server management
- `TF_VAR_rcon_port`: RCON port number

These are automatically provided in CI/CD via GitHub secrets.
