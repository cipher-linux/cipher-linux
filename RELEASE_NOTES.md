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
- Custom GRUB boot menu structure (CIPHER Linux / Advanced options /
  Utilities) with clean selection highlight

## Still In Progress (not in this build)

* Plymouth boot splash — actively being worked on
* Memtest86+ — deferred; current package format isn't compatible with live-build's grub.cfg detection, needs a custom loopback boot entry
* Lockscreen wallpaper — currently identical to desktop wallpaper; a distinct lockscreen image is planned
* Additional packages — package selection still being expanded
* General desktop polish
  
## Download & Verify

    IISO: cipher-linux-rc1.iso
    SHA256: cipher-linux-rc1.iso.sha256
    Signature: cipher-linux-rc1.iso.asc

To verify your download:

```bash
sha256sum -c cipher-linux-rc1.iso.sha256
gpg --verify cipher-linux-rc1.iso.asc cipher-linux-rc1.iso
```
