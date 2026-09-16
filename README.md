<div align="center">

# CIPHER Linux 🔐

**C**ommunity **I**nspired **P**latform for **H**acking, **E**ducation and **R**esearch

*Secure. Private. Yours.*

[![Status](https://img.shields.io/badge/status-in%20development-orange)]()
[![License](https://img.shields.io/badge/license-GPLv3-blue)]()
[![Base](https://img.shields.io/badge/base-Debian-blue)]()
[![Desktop](https://img.shields.io/badge/desktop-XFCE-informational)]()

</div>

---

## What is CIPHER Linux?

CIPHER Linux is a Debian-based Linux distribution built for beginners entering the world of Linux and cybersecurity.

Most distros assume you already know what you're doing. CIPHER Linux is built for the opposite moment — the confused, curious beginner who wants to learn Linux *and* cybersecurity but doesn't know where to start. It bridges that gap with a friendly desktop experience, a guided path into security tooling, and everything documented in the open.

## Our Philosophy

CIPHER Linux borrows the best of five distros that already got something right:

| Distro | What we took |
|---|---|
| **Linux Mint** | UX simplicity |
| **Kali Linux** | Security culture |
| **Ubuntu** | Hardware compatibility |
| **Debian** | Stability |
| **Pop!_OS** | Design |

## Goals

- Build a beginner-friendly Linux distro
- Integrate cybersecurity tools in a guided, non-overwhelming way
- Document everything openly for the community
- Free distro, built by the community, for the community

## Current Status

🚧 **Active development — core build pipeline working, branding nearly complete.**

CIPHER Linux already boots and installs end-to-end:

- ✅ Custom `live-build` pipeline producing a working, bootable ISO (BIOS + UEFI)
- ✅ Calamares installer integrated — full install-to-disk tested working
- ✅ Custom local APT repo for CIPHER packages, GPG-signed and apt-verified
- ✅ Six optional metapackages (`cipher-admin`, 'cipher-network', 'cipher-security', 'cipher-forensics', 'cipher-dev', 'cipher-devops') plus 'cipher-welocome' v2.0.0 guided onboarding tool
- ✅ CIPHER branding applied: custom GRUB theme, Plymouth boot splash, desktop wallpaper, Calamares branding, `/etc/os-release`
- 🚧 Final GRUB menu polish — in progress
- 🚧 Final GRUB menu polish — in progress
- ⏳ DistroWatch submission — planned after v1.0

See the [Roadmap](#roadmap) below for the full path to `v1.0 "Enigma"`.

## Download

The first prototype is available as a pre-release: **[v1.0.0-rc1](../../releases/tag/v1.0.0-rc1)** - includes the ISO, SHA256 checksum, and GPG signature. Not yet stable; use for testing and feedback only. Star/watch the repo to get notified when v1.0 "Enigma" ships.

## Roadmap

| Milestone | Description | Status |
|---|---|---|
| **v0.1 — First Boot** | Working bootable ISO via live-build | ✅ Done |
| **v0.5 — Installable** | Calamares installer, install-to-disk working | ✅ Done |
| **v0.8 — Branded** | Full CIPHER visual identity: GRUB, Plymouth, desktop, installer | 🚧 In progress |
| **v1.0 — "Enigma"** | First stable, signed public release | ⏳ Planned |
| **Post-1.0** | DistroWatch submission, dedicated website, community growth | ⏳ Planned |

Every release from v1.0 onward gets its own cipher/cryptography-themed codename, in alphabetical order.

## Installation

Full install guide will ship alongside the first public release. In short: CIPHER Linux boots to a live desktop where you can try it out, then install to disk using the built-in Calamares installer — same flow as Ubuntu, Mint, or Kali.

## Team

| Role | Contributor |
|---|---|
| Lead Builder | [@sachin-linux](https://github.com/sachin-linux) |
| Testing & Feedback | [@Govindaraju5796](https://github.com/Govindaraju5796), [@Abhijith2620](https://github.com/Abhijith2620), [@Shafiahamad059](https://github.com/Shafiahamad059) |
| Infrastructure | [@akhileshn15](https://github.com/akhileshn15)  |
| Community & Marketing | TBD |

## Contributing

Contributions, bug reports, and testers are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines before opening an issue or PR.

## Follow the Journey

We're documenting the entire build process in the open — the wins and the multi-day debugging rabbit holes.

- GitHub: [github.com/cipher-linux](https://github.com/cipher-linux)

## License

CIPHER Linux is licensed under the [GNU GPLv3](LICENSE).

---

<div align="center">

*Built with ❤️ by the CIPHER Linux team*

</div>
