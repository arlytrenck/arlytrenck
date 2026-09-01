#!/bin/bash

# GitHub API token (set via environment: export GITHUB_TOKEN=...)
TOKEN=${GITHUB_TOKEN}
OWNER="arlytrenck"
API="https://api.github.com"

if [ -z "$TOKEN" ]; then
  echo "Error: GITHUB_TOKEN environment variable not set"
  exit 1
fi

# Function to update repository description
update_description() {
  local repo=$1
  local desc=$2
  
  echo "Updating description for $repo..."
  curl -X PATCH \
    -H "Authorization: Bearer $TOKEN" \
    -H "Accept: application/vnd.github+json" \
    "$API/repos/$OWNER/$repo" \
    -d "{\"description\": \"$desc\"}"
  echo ""
}

# Function to update repository topics
update_topics() {
  local repo=$1
  shift
  local topics=$@
  
  echo "Updating topics for $repo..."
  local topics_json=$(printf '"%s",' $topics | sed 's/,$//')
  curl -X PUT \
    -H "Authorization: Bearer $TOKEN" \
    -H "Accept: application/vnd.github+json" \
    "$API/repos/$OWNER/$repo/topics" \
    -d "{\"names\": [$topics_json]}"
  echo ""
}

# Update arlytrenck (profile repo)
update_description "arlytrenck" "Personal bio and portfolio"
update_topics "arlytrenck" "profile" "portfolio"

# Update synology-config
update_description "synology-config" "Config-state and capture tooling for homelab Synology NASes"
update_topics "synology-config" "homelab" "synology" "nas" "backup"

# Update homelab-unifi-migration
update_description "homelab-unifi-migration" "Migration planning, scripts, and documentation for upgrading Ubiquiti UniFi infrastructure"
update_topics "homelab-unifi-migration" "homelab" "unifi" "networking" "migration"

# Update homelab
update_topics "homelab" "homelab" "infrastructure-as-code" "docker" "automation"

# Update homelab-runbook
update_topics "homelab-runbook" "homelab" "documentation" "runbook" "troubleshooting"

# Update proxmox-config
update_topics "proxmox-config" "homelab" "proxmox" "virtualization" "infrastructure-as-code"

# Update sysadmin-linux
update_topics "sysadmin-linux" "linux" "sysadmin" "scripts" "devops"

# Update sysadmin-windows
update_topics "sysadmin-windows" "windows" "powershell" "sysadmin" "devops"

# Update trenck.net
update_topics "trenck.net" "website" "portfolio" "personal-site"

echo "All repositories updated!"
