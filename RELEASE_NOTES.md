# CIPHER Linux 1.0 "Enigma" — Release Candidate 2

Second release candidate. Focused on boot/branding polish and package
fixed found while testing RC1.

## What's New Since RC1

- Rewrite the Plymouth boot splash: removed the old eye-glow effect and
  frame-loop animation, fixed a background-color mismatch that caused a
  visible seam, and corrected logo scaling so the full mark and wordmark
  display cleanly on any resolution without clipping
- Fixed a GRUB/Calamares theming conflict where installing via Calamares
  could restore a competing default GRUB background on top of the 
  CIPHER theme
- Enabled `contrib` and `non-free` in the default `sources.list`,
  fixing installs of tools (e.g. `nitko`, parts of `cipher-security`)
  that depend on non-free components
- Removed the `bulk-extractor` dependency from `cipher-forensics`
  (unavailable in current Debian repos) and bumped the package to 1.1

## What's Working

- Boots and installs cleanly via Calamares
- Custom GRUB boot theme (logo, colors, fonts)
- Custom, polished Plymouth boot splash animation
- Branded desktop (XFCE) with CIPHER wallpaper and icons
- Custom local apt repository pipeline, GPG-signed
- Custom GRUB boot menu structure (CIPHER Linux / Advanced options / 
  Utilities) with clean selection highlight
- Six optional metapackages (`cipher-admin`, `cipher-network`, 
  `cipher-security`, `cipher-forensics`, `cipher-dev`, `cipher-devops`)
- Fixed lockscreen wallpapaer - now a distinct image from the desktop wallpaper (previously identical)

## Known Issues

* GRUB background can appear as a plain black box (instead of the
  CIPHER artwork) during the "Loading Linux.../ Loading initial
  ramdisk" text on some virtual machines - cosmetic only, resolves
  itself once boot continues; root cause not yet confirmed
* Memtest86+ deferred; current package format isn't compitable with
  live-build's grub.cfg detection, needs a custom loopback boot entry
* Additional packages - package selection still being expanded
* General desktop polish

## Download & Verify

    ISO: cipher-linux-rc2.iso
    SHA256: cipher-linux-rc2.iso.sha256
    Signature: cipher-linux-rc2.iso.asc

To verify your download:

```bash
sha256sum -c cipher-linux-rc2.iso.sha256
gpg --verify cipher-linux-rc2.iso.asc cipher-linux-rc2.iso
```

--- 
 

# CIPHER Linux 1.0 "Enigma" — Release Candidate 1

CIPHER Linux is a Debian-based distro built for people who want to learn
Linux and cybersecurity, without needing to already know either. This is
a release candidate — the core system (installer, boot pipeline, custom
branding) is working and testable, but polish work is still in progress
before the final 1.0 release.

## What's Working

- Boots and installs cleanly via Calamares
- Custom GRUB boot theme (logo, colors, fonts)
- Custom Plymouth boot splash animation
- Branded desktop (XFCE) with CIPHER wallpaper and icons
- Custom local apt repository pipeline
- Custom GRUB boot menu structure (CIPHER Linux / Advanced options /
  Utilities) with clean selection highlight

## Still In Progress (not in this build)

* Memtest86+ — deferred; current package format isn't compatible with live-build's grub.cfg detection, needs a custom loopback boot entry
* Lockscreen wallpaper — currently identical to desktop wallpaper; a distinct lockscreen image is planned
* Additional packages — package selection still being expanded
* General desktop polish
  
## Download & Verify

    ISO: cipher-linux-rc1.iso
    SHA256: cipher-linux-rc1.iso.sha256
    Signature: cipher-linux-rc1.iso.asc

To verify your download:

```bash
sha256sum -c cipher-linux-rc1.iso.sha256
gpg --verify cipher-linux-rc1.iso.asc cipher-linux-rc1.iso
```
