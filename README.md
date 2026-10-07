![Arly Trenck, IT Systems Engineer & Infrastructure Architect](./img/banners/github-banner.png)

<p align="center">
  <a href="https://trenck.net">Website</a> &nbsp;·&nbsp;
  <a href="https://trenck.net/blog/">Blog</a> &nbsp;·&nbsp;
  <a href="https://trenck.net/resume/">Résumé</a> &nbsp;·&nbsp;
  <a href="https://www.linkedin.com/in/arlytrenck">LinkedIn</a> &nbsp;·&nbsp;
  <a href="https://www.credly.com/users/arlington-trenck">Credly</a> &nbsp;·&nbsp;
  <a href="mailto:arly@trenck.net">arly@trenck.net</a>
</p>

## Hi, I'm Arly

IT systems engineer and infrastructure architect in Fairfield, CT. I run
infrastructure operations for a 29-office residential real-estate brokerage
across Connecticut, New York, and Massachusetts: servers, firewalls,
wireless, identity, and automation.

Every office runs one standard, so a fix that works at one site applies to
the other 28. Recurring work gets scripted instead of repeated.

## At a glance

| | |
| --- | --- |
| **29** offices | One standard build across CT, NY, and MA |
| **1,250+** users | Single sign-on across Entra ID, Okta, and Google Workspace; MFA rollout under way |
| **29** firewalls | Refreshed at every office with no unplanned business-hours downtime |
| **52** access points | Moved to RUCKUS One cloud management |
| **160** endpoints | Scripted Windows 11 in-place upgrade ahead of end of support |

## What I run

| Area | Stack |
| --- | --- |
| Systems | Windows Server 2019 / 2022 / 2025, Active Directory & Group Policy, Ubuntu Server LTS, Proxmox VE, VMware, Synology DSM |
| Identity | Microsoft 365, Entra ID, MFA, Okta Workforce Identity, SAML SSO, Google Workspace, RBAC & least privilege |
| Network & security | SonicWall (SonicOS), RUCKUS One, VLANs & subnetting, IPsec & WireGuard VPN, DNS / DHCP, Cisco OpenDNS (Umbrella), Huntress EDR |
| Automation | PowerShell, Bash, Ansible, Git, Renovate, NinjaOne, ImmyBot, Liongard, IT Glue, Auvik, Freshservice |
| Backup & recovery | Axcient, Spanning Backup, restic, disaster-recovery planning & restore testing |

## Projects

| Project | What it is |
| --- | --- |
| [**arly-skill**](https://github.com/arlytrenck/arly-skill) | Takes a situation, returns the runbook that fits, and names the script that does the work. My playbook as an installable agent skill. |
| [**sysadmin-linux**](https://github.com/arlytrenck/sysadmin-linux) | Bash toolkit for Linux hosts: verified backups, container-host drift and security audits, TLS expiry checks, and runbooks. ShellCheck in CI. |
| [**sysadmin-windows**](https://github.com/arlytrenck/sysadmin-windows) | PowerShell toolkit for Windows Server: diffable config snapshots including Hyper-V, account and security audits, patching, reporting. PSScriptAnalyzer in CI. |
| [**sysadmin-macos**](https://github.com/arlytrenck/sysadmin-macos) | The same approach for macOS, with ShellCheck in CI. |
| [**homelab-public**](https://github.com/arlytrenck/homelab-public) | Docker Compose infrastructure behind my homelab, identifying details redacted. Hardening conventions and 44 Prometheus alerting rules published unedited. |
| [**homi**](https://github.com/arlytrenck/homi) | Self-hostable homelab dashboard: service launcher, HTTP / TCP / ping health checks, uptime history, Docker auto-discovery, and a plugin API. One container, one SQLite file. Next.js and TypeScript, MIT. v0.1.0 is out; integrations are tested against mock servers, not yet live instances. |

## Homelab

```text
Cloudflare DNS ─► ports 80/443 ─► Caddy (TLS, DNS-01) ─► Authelia (SSO + 2FA)
                                                          └─► 54 containers
                                      Docker Compose on a 16 vCPU Ubuntu VM
                                      under Proxmox VE 9 on ZFS
```

- **Exposure:** the home network opens only ports 80 and 443. Remote access
  runs over a Tailscale subnet router, so no admin interface needs a public
  port.
- **Everything as code:** every container is a version-controlled Compose
  stack, and the host rebuilds from one Ansible playbook.
- **Monitoring:** 71 Prometheus rules run through Alertmanager and page
  Gotify on my phone.
- **Backups:** five independent copies, with a monthly restore drill that
  reports pass or fail.
- **Hardware:** Lenovo ThinkSystem SR650, two Synology NAS units, a UniFi
  Dream Machine SE gateway and switch with a U7 Pro access point, and a
  CyberPower UPS watched by NUT for clean shutdown.

[Architecture and rack layout](https://trenck.net/homelab/)

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
