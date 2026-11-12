# CIPHER Linux 1.0 "Enigma" — Release Candidate 5

Fifth release candidate. Focused on real-hardware fixes found while testing
rc4 on physical laptops, plus a new optional full-disk encryption choice in
the installer.

## What's New Since RC4

- Added an optional **Encrypt system** choice (LUKS) to the installer, on the
  Partitions page in Erase disk mode. The passphrase is asked at every boot,
  and there is no recovery if it is forgotten
- Fixed the wallpaper not applying correctly on each monitor on real laptops
- Fixed the Super key not opening the application menu
- Fixed time not syncing automatically; NTP now works out of the box
- New fastfetch layout in the terminal, with the full CIPHER ring logo and an
  expanded module list

## Known Issues

* `cipher-forensics` can fail to install inside a live session on machines
  with 2 GB RAM or less, because the live overlay fills up. Install CIPHER
  Linux to disk first, then add the package
* Tray icon sizing inconsistency - battery and speaker icons render at a 
  slightly different visual size than the LAN icon in the panel; cosmetic
  only, not yet fixed

## Download & Verify

 ISO: cipher-linux-rc5.iso (hosted on Archive.org)
 SHA256:cipher-linux-rc5.iso.sha26
 Signature: cipher-linux-rc5.iso.asc (key 8A3F56EB7DF1265B)

To verify your download:

```bash
sha256sum -c cipher-linux-rc5.iso.sha256
gpg --verify cipher-linux-rc5.iso.asc cipher-linux-rc5.iso
```

See [INSTALL.md](INSTALL.md) for full download, verification and installation
instructions.

---

# CIPHER Linux 1.0 "Enigma" — Release Candidate 4 

Usability fixes and finishing touches from testing rc3.

## What's New Since RC3

- Fixed the CIPHER Welcome desktop launcher not opening when clicked
- Added a CIPHER Welcome icon to the desktop (previously only reachable via
  terminal command), working on both live boot and after a Calamares install
- Fixed an "untrusted application launcher" warning that appeared the first
  time the icon was clicked
- Enabled memtest86+, available from the GRUB boot menu under
  Utilities -> Memory Diagnostic Tool (works in both BIOS and UEFI boot modes)
- Adding `INSTALL.md`, a full beginner-friendly guide covering downloading,
  verigying, creating a bootable USB, installing, and basic troubleshooting

## Known Issues

* Tray icon sizing inconsistency - cosmetic only 

## Download & Verify

 ISO: cipher-linux-rc4.iso (hosted on Archive.org)
 SHA256: cipher-linux-rc4.iso.sha256
 Signature: cipher-linux-rc4.iso.asc (key 8A3F56EB7DF1265B)

This release is signed with a new key (`8A3F56EB7DF1265B`), seperate from the 
one used for rc2 and rc3 (`2B2C7B5EA01E52DC`). Both keys are documented in 
[INSTALL.md](INSTALL.md).

```bash
sha256sum -c cipher-linux-rc4.iso.sha256
gpg --verify cipher-linux-rc4.iso.asc cipher-linux-rc4.iso
```

---

# CIPHER Linux 1.0 "Enigma" — Release Candidate 3

Visual identity and hardware compatibility: a fresh custom icon theme, a real
cyan battery gauge, and broader hardware support out of the box. 

## What's New Since RC2

**Hardware & Compatibility**

- Added firmware packages for broader hardware support: `firmware-linux`,
  `firmware-realtek`, `firmware-iwlwifi`, `firmware-misc-nonfree`,
  `firmware-amd-graphics`
- Fixed a black-screen issue during kernel load, on both live boot and
  Calamares-installed systems

**Software**

- Added the full LibreOffice suite (Writer, Calc, Impress, and more)
- Firefox is now pinned in the dock by defaut

**CIPHER-ICONS: new custom icon theme**

A full white-outline, cyan-accent icon set replacing the previous defaults,
coverig Home, Documents, Downloads, Music, Pictures, Public, Templates,
Videos, Trash (empty and full states), Computer / File Systems (custom 
hard-drive icon), Thunar, Terminal and Mousepad.

**Battery Indicator**

- Replaced the old panel battery icon with a custom gauge showing a true, 
  smoothly-scaling charge level in cyan
- Added a lightning bolt indicator that appears only while charging
- Live percentage now displayed directly in the panel

**Panel & UI fixes**

- Fixed the CIPHER Whisker Menu button rendering too small 
- Fixed dock pin behaviour so pinned apps stay pinned even when not running

## Known Issues

* Tray icon sizing inconsistency - battery and speaker icons render at a 
  slightly different visual size than the LAN icon in the panel; cosmetic
  only
* Memtest86+ deferred; current package format isn't compatible with
  live-build grub.cfg detection, needs a custom loopback boot entry

## Download & Verify
 
  ISO: cipher-linux-rc3.iso (hosted on Archive.org)
  SHA256: cipher-linux-rc3.iso.sha256
  Signature: cipher-linux-rc3.iso.asc (key 2B2C7B5EA01E52DC)

```bash
sha256sum -c cipher-linux-rc3.iso.sha256
gpp --verify cipher-linux-rc3.iso.asc cipher-linux-rc3.iso
```

---

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
- Fixed lockscreen wallpapaer - now a distinct image from the desktop 
  wallpaper (previously identical)

## Known Issues

* Tray icon sizing inconsistency - battery and speaker icons render at a 
  slightly different visual size than the LAN icon in the panel; cosmetic
  only, not yet fixed
* GRUB background can appear as a plain black box (instead of the
  CIPHER artwork) during the "Loading Linux.../ Loading initial
  ramdisk" text on some virtual machines - cosmetic only, resolves
  itself once boot continues; root cause not yet confirmed
* Memtest86+ deferred; current package format isn't compitable with
  live-build's grub.cfg detection, needs a custom loopback boot entry
* Additional packages - package selection still being expanded

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
