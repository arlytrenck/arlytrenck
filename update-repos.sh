#!/bin/bash
# Set GitHub repo descriptions + topics for arlytrenck/*.
#   export GITHUB_TOKEN=...   # needs 'repo' scope
#   ./update-repos.sh
set -euo pipefail

TOKEN=${GITHUB_TOKEN:?set GITHUB_TOKEN (repo scope)}
OWNER="arlytrenck"
API="https://api.github.com"

desc() {  # $1=repo  $2=description
  echo "  desc  $1"
  curl -fsS -X PATCH -H "Authorization: Bearer $TOKEN" -H "Accept: application/vnd.github+json" \
    "$API/repos/$OWNER/$1" -d "{\"description\": \"$2\"}" >/dev/null
}
topics() {  # $1=repo  $2..=topics
  local repo=$1; shift
  local json; json=$(printf '"%s",' "$@" | sed 's/,$//')
  echo "  topic $repo"
  curl -fsS -X PUT -H "Authorization: Bearer $TOKEN" -H "Accept: application/vnd.github+json" \
    "$API/repos/$OWNER/$repo/topics" -d "{\"names\": [$json]}" >/dev/null
}

desc   arlytrenck "GitHub profile README — bio, focus areas, and links."
topics arlytrenck portfolio github-profile profile-readme

desc   homelab "Docker Compose infrastructure-as-code for the trenck.net homelab — hardened self-hosted stacks (media, identity, monitoring, photos) behind Caddy with automatic TLS."
topics homelab homelab docker docker-compose self-hosted infrastructure-as-code caddy authelia prometheus grafana automation

desc   homelab-runbook "Operational reference, tooling, and redacted config snapshots (Cloudflare, Proxmox, Synology, Tailscale, Grafana, Uptime Kuma) for the trenck.net homelab."
topics homelab-runbook homelab documentation runbook self-hosted backup disaster-recovery bash automation infrastructure

desc   homelab-ansible "Ansible bare-OS bootstrap for the trenck.net homelab — base hardening, Docker, Caddy, Tailscale, CIFS storage and backup wiring; run from a workstation over SSH."
topics homelab-ansible ansible automation caddy configuration-management docker homelab infrastructure-as-code proxmox self-hosted tailscale ubuntu

desc   homelab-unifi-migration "Phased plan, task backlog, and cutover runbooks for migrating the trenck.net homelab network and storage to UniFi — UDM-SE, Wi-Fi 7, and UNAS."
topics homelab-unifi-migration homelab unifi ubiquiti networking migration project-planning documentation nas network-infrastructure

desc   proxmox-config "Redacted, versioned snapshot of the Proxmox VE node configuration for the trenck.net homelab, plus capture tooling."
topics proxmox-config proxmox proxmox-ve homelab virtualization infrastructure-as-code configuration backup

desc   synology-config "Config state and capture tooling for the Synology NAS units in the trenck.net homelab."
topics synology-config synology nas dsm homelab backup configuration documentation

desc   sysadmin-linux "Curated Linux server-administration scripts, runbooks, and reference docs — service watchdogs, SSH key audits, backup and cert-expiry helpers — with ShellCheck CI."
topics sysadmin-linux linux bash shell-script sysadmin system-administration automation devops shellcheck

desc   sysadmin-windows "Curated Windows server-administration scripts, runbooks, and reference docs in PowerShell — account lifecycle, asset checks, reporting — with PSScriptAnalyzer CI."
topics sysadmin-windows windows powershell sysadmin system-administration automation devops psscriptanalyzer

desc   trenck.net "Deployed source of trenck.net — a static multi-page personal site (mirrors /var/www/html): responsive AVIF/WebP imagery, JSON-LD, and a hardened content-security policy."
topics trenck.net personal-website static-site portfolio html tailwindcss caddy python

echo "done."
