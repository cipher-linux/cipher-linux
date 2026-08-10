# CIPHER Linux Roadmap

This is the public roadmap for CIPHER Linux, from first boot to our first stable release, `v1.0 "Enigma"`, and beyond.

Every release from v1.0 onward will carry its own cipher/cryptography-themed codename, assigned alphabetically.

---

## ✅ v0.1 — First Boot

**Goal:** Prove the build pipeline works end to end.

- Custom `live-build` pipeline producing a bootable ISO
- Boots via USB or disc (iso-hybrid)
- Base: Kali-rolling + XFCE desktop
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

- [x] Custom GRUB boot theme
- [x] Custom Plymouth boot-splash theme
- [x] Desktop wallpaper + visual identity applied
- [x] Calamares installer branding
- [x] `/etc/os-release` updated with CIPHER Linux identity
- [ ] Final GRUB menu polish
- [ ] Both XFCE and GNOME desktop variants fully branded

**Status: In progress**

---

## ⏳ v1.0 — "Enigma"

**Goal:** First stable, public, signed release.

- [ ] GPG-signed ISO + published public key
- [ ] SHA256 checksums published with every release
- [ ] Full install documentation
- [ ] Public release notes (What's New / Known Issues / Credits)
- [ ] Repo hygiene complete: LICENSE, CONTRIBUTING, CODE_OF_CONDUCT, SECURITY ✅

**Status: Planned**

---

## ⏳ Post-1.0

**Goal:** Grow the project and the community.

- [ ] Submit to DistroWatch
- [ ] Launch a dedicated website (cipherlinux.org / cipherlinux.com)
- [ ] Expand guided cybersecurity tooling
- [ ] Optional paid certification track
- [ ] Grow contributor and tester base

**Status: Planned**

---

## Philosophy Reminder

Every milestone gets built and documented in the open — including the debugging rabbit holes, not just the wins. If you want to follow the day-to-day journey, check the [Issues](../../issues) tab or our social links in the main [README](README.md).
