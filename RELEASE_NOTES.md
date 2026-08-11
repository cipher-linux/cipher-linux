# CIPHER Linux 1.0 "Enigma" — Release Candidate 1

CIPHER Linux is a Debian-based distro built for people who want to learn
Linux and cybersecurity, without needing to already know either. This is
a release candidate — the core system (installer, boot pipeline, custom
branding) is working and testable, but polish work is still in progress
before the final 1.0 release.

## What's Working

- Boots and installs cleanly via Calamares
- Custom GRUB boot theme (logo, colors, fonts)
- Branded desktop (XFCE) with CIPHER wallpaper and icons
- Custom local apt repository pipeline

## Still In Progress (not in this build)

- GRUB boot menu — theme is applied, but menu layout/selection-highlight
  still being refined
- Plymouth boot splash — actively being worked on
- Lockscreen wallpaper — currently identical to desktop wallpaper;
  a distinct lockscreen image is planned
- Additional packages — package selection still being expanded
- General desktop polish

## Known Issues

- GRUB boot menu selection highlight does not render (text bolding on
  selection works, but the highlight box graphic does not appear).
  Root cause not yet found — cosmetic only, does not affect booting.
- GRUB boot menu entries have excessive vertical spacing between them,
  making the menu look stretched out.

## Download & Verify

- ISO: `cipher-linux-1.0-enigma-rc1-amd64.iso`
- SHA256: `cipher-linux-1.0-enigma-rc1-amd64.iso.sha256`
- Signature: `cipher-linux-1.0-enigma-rc1-amd64.iso.sha256.asc`

To verify your download:

\`\`\`bash
sha256sum -c cipher-linux-1.0-enigma-rc1-amd64.iso.sha256
gpg --verify cipher-linux-1.0-enigma-rc1-amd64.iso.sha256.asc
\`\`\`
