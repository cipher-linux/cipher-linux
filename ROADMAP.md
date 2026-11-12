# CIPHER Linux Roadmap

This is the public roadmap for CIPHER Linux, from first boot to our first stable release, `v1.0 "Enigma"`, and beyond.

Every release from v1.0 onward will carry its own cipher/cryptography-themed codename, assigned alphabetically.

**Where we are now:** release candidate stage. the latest pre-release is [rc5](https://github.com/cipher-linux/cipher-linux/release/tag/rc5).

---

## ✅ v0.1 — First Boot

**Goal:** Prove the build pipeline works end to end.

- Custom `live-build` pipeline producing a bootable ISO
- Boots via USB or disc (iso-hybrid)
- Proof-of-concept base with the XFCE desktop (the base has since moved to Debian 13 "trixie")
- No branding yet — proof of concept only

**Status: Complete**

---

## ✅ v0.5 — Installable

**Goal:** Move from "boots live" to "installs to disk."

- Calamares installer integrated into the live ISO
- Full install-to-disk tested and working in VirtualBox
- Custom local APT repository set up for CIPHER packages
- First custom `.deb` package built (`cipher-welcome`)

**Status: Complete**

---

## 🚧 v0.8 — Branded

**Goal:** CIPHER Linux looks and feels like its own distro, not reskinned Kali.

- [x] Custom GRUB boot theme (BIOS)
- [x] Custom GRUB boot theme (EFI)
- [x] Custom Plymouth boot-splash theme
- [x] Desktop wallpaper + visual identity applied
- [x] Calamares installer branding
- [x] `/etc/os-release` updated with CIPHER Linux identity
- [x] Final GRUB menu polish

**Status: Complete**

---

## 🚧 v0.9 — Compatible & Polished

**Goal:** Work well on real hardware, not just virtual machines.

- [x] Tested on real laptops
- [x] Core firmware packages included (Realtek, intel Wi-Fi, AMD graphics, misc non-free
- [x] Custom CIPHER-ICONS icon theme and cyan battery gauge
- [x] Per-monitor wallpaper, Super key opens the menu, automatic time sync
- [x] Optional full-disk encryption (LUKS) in the installer
- [x] memtest86+ in the boot menu
- [ ] Additional firmware and wider hardware coverage
- [ ] Tiling shortcuts (Super + arrow keys)
- [ ] Fix `cipher-forensics` failing to install in low-RAM live sessions
- [ ] Tray icon sizing consistency
- [ ] General desktop polish and package selection

**Status: In Progress**

---

## ⏳ v1.0 — "Enigma"

**Goal:** First stable, public, signed release.

- [x] GPG-signed ISO + published public key
- [x] SHA256 checksums published with every release
- [x] Full install documentation ([INSTALL.md](INSTALL.MD))
- [x] Public release notes ([RELEASE_NOTES.md](RELEASE_NOTES.md))
- [x] Repo hygiene complete: LICENSE, CONTRIBUTING, CODE_OF_CONDUCT, SECURITY 
- [ ] Everything in v0.9 finished and tested on real hardware
- [ ] Stable, signed public release

**Status: Planned**

---

## ⏳ Post-1.0

**Goal:** Grow the project and the community.

- [ ] Submit to DistroWatch
- [ ] Launch a dedicated website (cipherlinux.org / cipherlinux.com)
- [ ] Expand guided cybersecurity tooling
- [ ] GNOME desktop variant (in addition to XFCE)
- [ ] Optional paid certification track
- [ ] Grow contributor and tester base

**Status: Planned**

---

## Philosophy Reminder

Every milestone gets built and documented in the open — including the debugging rabbit holes, not just the wins. If you want to follow the day-to-day journey, check the [Issues](../../issues) tab or our social links in the main [README](README.md).
