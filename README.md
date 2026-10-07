<p align="center">
  <a href="https://trenck.net">Website</a> &nbsp;·&nbsp;
  <a href="https://trenck.net/blog/">Blog</a> &nbsp;·&nbsp;
  <a href="https://trenck.net/resume/">Résumé</a> &nbsp;·&nbsp;
  <a href="https://www.linkedin.com/in/arlytrenck">LinkedIn</a> &nbsp;·&nbsp;
  <a href="https://www.credly.com/users/arlington-trenck">Credly</a> &nbsp;·&nbsp;
  <a href="mailto:arly@trenck.net">arly@trenck.net</a>

I'm an IT systems engineer in Fairfield, CT. By day I run infrastructure
for a 29-office brokerage across three states. By night I build in the
open, and right now that mostly means **homi**.

## Featured: homi

<a href="https://github.com/arlytrenck/homi">
  <img src="https://raw.githubusercontent.com/arlytrenck/homi/main/docs/brand/homi-banner.png" alt="homi: a dashboard for your homelab" width="100%" />
</a>

<p align="center">
  <img src="https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=white&style=flat-square" alt="TypeScript" />
  <img src="https://img.shields.io/badge/Next.js-000000?logo=nextdotjs&logoColor=white&style=flat-square" alt="Next.js" />
  <img src="https://img.shields.io/badge/SQLite-003B57?logo=sqlite&logoColor=white&style=flat-square" alt="SQLite" />
  <img src="https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white&style=flat-square" alt="Docker" />
  <img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="MIT license" />
  <img src="https://img.shields.io/badge/release-v0.1.0-blue?style=flat-square" alt="v0.1.0" />
</p>

**[homi](https://github.com/arlytrenck/homi) is a self-hostable homelab
dashboard.** A fast launcher for your services, with live health checks and
uptime history, in one container with one SQLite file and no external
database.

| | |
| --- | --- |
| **Live status** | HTTP, TCP, and ping checks with up / degraded / down states, live updates, and 24h to 90d uptime history |
| **Ops view** | A dense, worst-first table with a kiosk mode for a wall display |
| **Integrations** | Proxmox, Docker, Pi-hole, AdGuard Home, UniFi, Synology, TrueNAS, the \*arr apps, Authentik, Uptime Kuma, Grafana, and a plugin API |
| **Docker auto-discovery** | Label a container with `homi.enable=true` and it appears with its own health check |
| **Secure by default** | argon2id passwords, hashed server-side sessions, CSRF checks, login rate limiting, SSRF-guarded outbound requests, AES-256-GCM for stored secrets |
| **Portable** | Multi-arch image (amd64 and arm64), YAML export and import, installable PWA manifest |

```sh
mkdir homi && cd homi
curl -O https://raw.githubusercontent.com/arlytrenck/homi/main/docker-compose.yml
docker compose up -d        # then open http://localhost:3000
```

## More projects

<table>
<tr>
<td width="50%" valign="top">

### [sysadmin-linux](https://github.com/arlytrenck/sysadmin-linux)
![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnubash&logoColor=white&style=flat-square)
![ShellCheck](https://img.shields.io/badge/CI-ShellCheck-informational?style=flat-square)

**39 scripts** and runbooks for Linux hosts. Verified backups, container
audits, SSH key and TLS expiry checks, and runbooks for a full disk, a
leaked secret, and a failed patch.

</td>
<td width="50%" valign="top">

### [sysadmin-windows](https://github.com/arlytrenck/sysadmin-windows)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?logo=powershell&logoColor=white&style=flat-square)
![PSScriptAnalyzer](https://img.shields.io/badge/CI-PSScriptAnalyzer-informational?style=flat-square)

**27 scripts** for Windows Server. Diffable config snapshots including
Hyper-V, local admin and scheduled-task audits, Defender status, and
`-WhatIf` on anything that changes state.

</td>
</tr>
<tr>
<td width="50%" valign="top">

### [sysadmin-macos](https://github.com/arlytrenck/sysadmin-macos)
![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnubash&logoColor=white&style=flat-square)
![ShellCheck](https://img.shields.io/badge/CI-ShellCheck-informational?style=flat-square)

**18 scripts** for macOS. SIP, Gatekeeper, and FileVault audits, listening
port allowlists, Time Machine verification, and launchd and APFS notes.

</td>
<td width="50%" valign="top">

### [homelab-public](https://github.com/arlytrenck/homelab-public)
![Docker Compose](https://img.shields.io/badge/Docker_Compose-2496ED?logo=docker&logoColor=white&style=flat-square)
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?logo=prometheus&logoColor=white&style=flat-square)

The Compose infrastructure behind my homelab, identifying details
redacted. Hardening conventions, a lessons-learned file of real mistakes,
and **44 Prometheus alert rules** published unedited.

</td>
</tr>
<tr>
<td colspan="2" valign="top">

### [arly-skill](https://github.com/arlytrenck/arly-skill)
![Agent skill](https://img.shields.io/badge/Agent_skill-7A5C12?style=flat-square)

My playbook as an installable agent skill: describe a situation and it
returns the runbook that fits and the script that does the work. Built only
from my public tools and writing. Install with
`npx skills add arlytrenck/arly-skill -g`.

</td>
</tr>
</table>

## Homelab in one paragraph

Cloudflare answers DNS and only ports 80 and 443 reach the house. Caddy
terminates TLS, Authelia puts SSO and two-factor in front of everything
private, and requests land on one of 54 Docker Compose containers on a
Proxmox VE 9 host. Tailscale handles remote admin, 71 Prometheus rules page
my phone through Gotify, and the whole host rebuilds from one Ansible
playbook. Five independent backup copies get a monthly restore drill.
[Architecture and rack layout](https://trenck.net/homelab/).

<details>
<summary><b>Day job and stack</b></summary>

<br>

At a 29-office residential real-estate brokerage in CT, NY, and MA, every
office runs one standard, so a fix at one site applies to the other 28.
Single sign-on covers 1,250+ users across Entra ID, Okta, and Google
Workspace, with an MFA rollout under way. Completed work includes a
firewall refresh across all 29 offices, 52 access points moved to RUCKUS
One, and a scripted Windows 11 upgrade across 160 endpoints.

| Area | Stack |
| --- | --- |
| Systems | Windows Server 2019 / 2022 / 2025, Active Directory & Group Policy, Ubuntu Server LTS, Proxmox VE, VMware, Synology DSM |
| Identity | Microsoft 365, Entra ID, MFA, Okta Workforce Identity, SAML SSO, Google Workspace |
| Network & security | SonicWall, RUCKUS One, VLANs, IPsec & WireGuard VPN, DNS / DHCP, Cisco OpenDNS, Huntress EDR |
| Automation | PowerShell, Bash, Ansible, Git, Renovate, NinjaOne, ImmyBot, Liongard, IT Glue, Auvik, Freshservice |
| Backup & recovery | Axcient, Spanning Backup, restic, restore testing |

</details>

## Certifications

<p align="center">
  <a href="https://www.credly.com/badges/c62cfb62-847b-4794-96c2-6ce6ebf41293"><img src="./img/certs/comptia-a-plus.png" alt="CompTIA A+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/1f7ea311-0c34-4d04-8ae3-d52537a2b9a1"><img src="./img/certs/comptia-network-plus.png" alt="CompTIA Network+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/75587b8c-296b-4657-a670-0b156d7b1335"><img src="./img/certs/comptia-security-plus.png" alt="CompTIA Security+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/80014155-511f-489c-b198-35a5a22f366a"><img src="./img/certs/comptia-server-plus.png" alt="CompTIA Server+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/1342ed76-5215-4ffb-a063-465643214f75"><img src="./img/certs/lpi-linux-essentials.png" alt="LPI LE-1 Linux Essentials" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/00631828-5110-4370-8d1b-544d2425c59b"><img src="./img/certs/comptia-cios-v2.png" alt="CompTIA IT Operations Specialist (CIOS)" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/72a74eae-a918-4f69-90fd-9814e7e671a9"><img src="./img/certs/comptia-cnip-v2.png" alt="CompTIA Network Infrastructure Professional (CNIP)" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/576e2618-449b-426f-9234-99a578fb7599"><img src="./img/certs/comptia-csis-v2.png" alt="CompTIA Secure Infrastructure Specialist (CSIS)" width="84" height="84" /></a>
</p>

<p align="center">CompTIA A+, Network+, Security+, Server+, LPI Linux Essentials, and three CompTIA stackable certifications.<br><a href="https://www.credly.com/users/arlington-trenck">Verify all eight on Credly</a></p>
