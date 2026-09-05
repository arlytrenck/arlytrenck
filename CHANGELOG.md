# Changelog

Notable changes to this profile repo. Grouped by date, newest first.
Format: [Keep a Changelog](https://keepachangelog.com/).

## 2026-09-05 (latest)
- Reconciled the IT Support Specialist bullet's "33 office locations" with
  the "29 offices" figure used everywhere else in the résumé, and dropped
  the "1,400+ end users" figure entirely rather than reconcile a second
  unverified historical number — "200+ endpoints" stays. Same fix applied
  to the résumé source `.docx`/`.html` on mercury and to `/resume/` on
  trenck.net.

## 2026-09-05 (later)
- Replaced `Arlington-Trenck-Resume-2026.pdf` with `Arlington-Trenck-Resume-2026.html`
  — the PDF had gone stale relative to the corrected résumé source below and
  this VM has no LibreOffice/pandoc/node to re-export one, so the résumé is
  now published as the up-to-date HTML directly instead. Same switch made on
  trenck.net, whose footer "Résumé" link now points to `/resume/` (a live
  HTML page) rather than a downloaded PDF. README's Resume link updated to
  match.

## 2026-09-05
- Corrected two figures in the résumé source that trenck.net's live-count
  check caught today: office count 30+ → **29** (William Pitt Sotheby's
  currently operates 29 offices, per williampitt.com/real-estate-offices/)
  and added the current role's end-user count, **1,250+**, which the résumé
  hadn't previously stated. Applied to the Summary and the IT Operations
  Administrator bullet in
  `/mnt/mercury/resources/sysadmin/career/resume/Arlington Trenck — Resume 2026.{docx,html}`.
  The IT Support Specialist bullet's "33 office locations / 1,400+ end users"
  is a historical figure for that role's 2022–2025 window and was left as-is.
- Trimmed the résumé's Certifications section to the same 7 credentials as
  this repo's badge grid and trenck.net/certifications: CompTIA A+/Network+/
  Security+/Server+ (ce), ISC2 CC, Fortinet FCA, LPI Linux Essentials.
  Dropped the CompTIA stackables (CSIS/CNIP/CIOS), FortiGate 7.4 Operator,
  NSE 3, and LFC108 (Cybersecurity Essentials) — already absent from the
  badge grid here and from trenck.net, so the résumé was the last place
  still listing them.
