![Arly Trenck, IT Systems Engineer & Infrastructure Architect](./img/banners/github-banner.png)

<p align="center">
  <a href="https://trenck.net">Website</a> &nbsp;·&nbsp;
  <a href="https://trenck.net/blog/">Blog</a> &nbsp;·&nbsp;
  <a href="https://trenck.net/resume/">Résumé</a> &nbsp;·&nbsp;
  <a href="https://www.linkedin.com/in/arlytrenck">LinkedIn</a> &nbsp;·&nbsp;
  <a href="https://www.credly.com/users/arlington-trenck">Credly</a> &nbsp;·&nbsp;
  <a href="mailto:arly@trenck.net">arly@trenck.net</a>
</p>

I'm an IT systems engineer in Fairfield, CT. By day I run infrastructure
for a 29-office brokerage across three states. By night I turn what that
teaches me into public tools. Every repo below started as a script I wrote
twice, then generalized.

## Projects

<table>
<tr>
<td width="50%" valign="top">

### [sysadmin-linux](https://github.com/arlytrenck/sysadmin-linux)
![Shell](https://img.shields.io/badge/Bash-4EAA25?logo=gnubash&logoColor=white&style=flat-square)
![ShellCheck](https://img.shields.io/badge/CI-ShellCheck-informational?style=flat-square)

**39 scripts** and runbooks for Linux hosts. Verified backups, container
audits, SSH key and TLS expiry checks, patch wrappers, and runbooks for a
full disk, a leaked secret, and a failed patch.

</td>
<td width="50%" valign="top">

### [sysadmin-windows](https://github.com/arlytrenck/sysadmin-windows)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?logo=powershell&logoColor=white&style=flat-square)
![PSScriptAnalyzer](https://img.shields.io/badge/CI-PSScriptAnalyzer-informational?style=flat-square)

**27 scripts** for Windows Server. Diffable config snapshots including
Hyper-V, local admin and scheduled-task audits, Defender status, patching.
Everything that changes state supports `-WhatIf`.

</td>
</tr>
<tr>
<td width="50%" valign="top">

### [sysadmin-macos](https://github.com/arlytrenck/sysadmin-macos)
![Shell](https://img.shields.io/badge/Bash-4EAA25?logo=gnubash&logoColor=white&style=flat-square)
![ShellCheck](https://img.shields.io/badge/CI-ShellCheck-informational?style=flat-square)

**18 scripts** for macOS. SIP, Gatekeeper and FileVault audits, listening
port allowlists, Time Machine verification, and launchd, APFS, and
unified-logging cheatsheets.

</td>
<td width="50%" valign="top">

### [arly-skill](https://github.com/arlytrenck/arly-skill)
![Agent skill](https://img.shields.io/badge/Agent_skill-181817?style=flat-square)

My playbook as an installable agent skill. Describe a situation and it
returns the runbook that fits and the script that does the work. Built only
from my public tools and writing.

```sh
npx skills add arlytrenck/arly-skill -g
```

</td>
</tr>
<tr>
<td width="50%" valign="top">

### [homelab-public](https://github.com/arlytrenck/homelab-public)
![Docker Compose](https://img.shields.io/badge/Docker_Compose-2496ED?logo=docker&logoColor=white&style=flat-square)
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?logo=prometheus&logoColor=white&style=flat-square)

The Compose infrastructure behind my homelab, with identifying details
redacted. Hardening conventions, a getting-started guide, a
lessons-learned file of real mistakes, and **44 Prometheus alert rules**
published unedited.

</td>
<td width="50%" valign="top">

### [homi](https://github.com/arlytrenck/homi)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=white&style=flat-square)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Release](https://img.shields.io/badge/release-v0.1.0-blue?style=flat-square)

A self-hostable homelab dashboard. Service launcher, HTTP, TCP, and ping
health checks, uptime history, Docker auto-discovery, and a plugin API.
One container, one SQLite file. Integrations are tested against mock
servers, not yet live instances.

</td>
</tr>
</table>

## How they fit together

The three sysadmin toolkits cover Linux, Windows Server, and macOS the same
way, one linter per repo. `arly-skill` indexes them, along with my runbooks
and writing, so an agent can point at the right script. `homelab-public`
shows the same habits applied to a personal stack, and `homi` is the
dashboard I built for that kind of stack.

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
  <a href="https://www.credly.com/badges/75587b8c-296b-4657-a670-0b156d7b1335"><img src="./img/certs/comptia-security-plus.png" alt="CompTIA Security+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/1f7ea311-0c34-4d04-8ae3-d52537a2b9a1"><img src="./img/certs/comptia-network-plus.png" alt="CompTIA Network+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/80014155-511f-489c-b198-35a5a22f366a"><img src="./img/certs/comptia-server-plus.png" alt="CompTIA Server+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/d01b6e9a-1b71-4d7e-82fb-d5eecdec7d8f"><img src="./img/certs/isc2-cc.png" alt="ISC2 Certified in Cybersecurity" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/c62cfb62-847b-4794-96c2-6ce6ebf41293"><img src="./img/certs/comptia-a-plus.png" alt="CompTIA A+" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/1342ed76-5215-4ffb-a063-465643214f75"><img src="./img/certs/lpi-linux-essentials.png" alt="LPI LE-1 Linux Essentials" width="84" height="84" /></a>
  <a href="https://www.credly.com/badges/760bc602-5eee-45e6-a81b-640e6312c304"><img src="./img/certs/fortinet-fca.png" alt="Fortinet Certified Associate" width="84" height="84" /></a>
</p>

<p align="center"><a href="https://www.credly.com/users/arlington-trenck">Verify all seven on Credly</a></p>
