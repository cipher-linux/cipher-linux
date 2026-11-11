# CIPHER Linux 🔐

**C**ommunity **I**nspired **P**latform for **H**acking, **E**ducation and **R**esearch

*Secure. Private. Yours.*

[![Status](https://img.shields.io/badge/status-release%20candidate-orange)](https://github.com/cipher-linux/cipher-linux/releases/tag/rc5)
[![License](https://img.shields.io/badge/license-GPLv3-blue)](LICENSE)
[![Base](https://img.shields.io/badge/base-Debian%2013-blue)](https://www.debian.org/)
[![Desktop](https://img.shields.io/badge/desktop-XFCE-informational)](https://xfce.org/)

---

## What is CIPHER Linux?

CIPHER Linux is a Debian-based Linux distribution built for beginners entering the world of Linux and cybersecurity.

Most distros assume you already know what you're doing. CIPHER Linux is built for the opposite moment: the confused, curious beginner who wants to learn Linux *and* cybersecurity but doesn't know where to start. It bridges that gap with a friendly desktop experience, a guided path into security tooling, and everything documented in the open.

## Our Philosophy

CIPHER Linux borrows the best of five distros that already got something right:

| Distro         | What we took           |
| -------------- | ---------------------- |
| **Linux Mint** | UX simplicity          |
| **Kali Linux** | Security culture       |
| **Ubuntu**     | Hardware compatibility |
| **Debian**     | Stability              |
| **Pop!_OS**    | Design                 |

## Goals

- Build a beginner-friendly Linux distro
- Integrate cybersecurity tools in a guided, non-overwhelming way
- Document everything openly for the community
- Free distro, built by the community, for the community

## Current Status

🚧 **Release candidate stage. Latest pre-release: [rc5](https://github.com/cipher-linux/cipher-linux/releases/tag/rc5).**

CIPHER Linux boots, installs and runs on real hardware:

- ✅ Custom `live-build` pipeline producing a bootable ISO (BIOS + UEFI)
- ✅ Debian 13 (trixie) base with the XFCE desktop
- ✅ Calamares installer, with an optional **full-disk encryption (LUKS)** choice
- ✅ Custom APT repository for CIPHER packages, GPG-signed and apt-verified
- ✅ Six optional metapackages plus `cipher-welcome` v2.0.0, a guided onboarding tool
- ✅ CIPHER branding: GRUB theme (BIOS + UEFI), Plymouth boot splash, wallpaper, Calamares, lock screen, icon and GTK themes, `/etc/os-release`, fastfetch
- ✅ Tested on real laptops: per-monitor wallpaper, Super key opens the menu, automatic time sync
- ✅ memtest86+ in the boot menu
- 🚧 v0.9 work: firmware and hardware support, tiling shortcuts, remaining polish
- ⏳ DistroWatch submission and project website, planned after v1.0

See the [Roadmap](#roadmap) for the full path to v1.0 "Enigma".

## Download

The latest pre-release is **rc5**.

- **ISO:** https://archive.org/details/cipher-linux-rc5 (hosted on archive.org because the ISO is larger than GitHub's 2 GB release-asset limit)
- **SHA256 checksum and GPG signature:** attached to the [rc5 release page](https://github.com/cipher-linux/cipher-linux/releases/tag/rc5)

Always verify your download before using it. The steps are in [INSTALL.md](INSTALL.md).

This is a release candidate: use it for testing and feedback only. Star or watch the repo to be notified when v1.0 "Enigma" ships.

## Installation

CIPHER Linux boots to a live desktop where you can try it out, then install to disk with the built-in Calamares installer, the same flow as Ubuntu, Mint or Kali.

In short:

1. Download and verify the ISO ([INSTALL.md](INSTALL.md)).
2. Write it to a USB stick, or attach it to a virtual machine.
3. Boot it, try the live desktop, then run **Install CIPHER Linux** from the desktop.
4. On the Partitions page, choose **Erase disk** and tick **Encrypt system** if you want full-disk encryption. You will type the passphrase every time you boot. There is no recovery if you forget it.

## Optional Packages

The base ISO is kept lean. Extra tools come as metapackages from the CIPHER APT repository:

| Package             | Purpose                      |
| ------------------- | ---------------------------- |
| `cipher-admin`      | System administration tools  |
| `cipher-network`    | Networking tools             |
| `cipher-security`   | Security tools               |
| `cipher-forensics`  | Digital forensics tools      |
| `cipher-dev`        | Development tools            |
| `cipher-devops`     | DevOps tools                 |

Run `cipher-welcome` after install for a guided menu that shows what is installed and suggests your first command.

## Known Issues

- `cipher-forensics` can fail to install inside a live session on machines with 2 GB RAM or less, because the live overlay fills up. Install CIPHER Linux to disk first, then add the package.

Found something else? Please [open an issue](https://github.com/cipher-linux/cipher-linux/issues).

## Roadmap

| Milestone                        | Description                                                      | Status         |
| -------------------------------- | ---------------------------------------------------------------- | -------------- |
| **v0.1: First Boot**             | Working bootable ISO via live-build                              | ✅ Done        |
| **v0.5: Installable**            | Calamares installer, install-to-disk working                     | ✅ Done        |
| **v0.8: Branded**                | Full CIPHER visual identity: GRUB, Plymouth, desktop, installer  | ✅ Done        |
| **v0.9: Compatible & Polished**  | Firmware and hardware support, tiling shortcuts, remaining polish | 🚧 In progress |
| **v1.0: "Enigma"**               | First stable, signed public release                              | ⏳ Planned     |
| **Post-1.0**                     | DistroWatch submission, dedicated website, community growth      | ⏳ Planned     |

Every release from v1.0 onward gets its own cipher/cryptography-themed codename, in alphabetical order.

## Building from Source

CIPHER Linux is built with Debian's `live-build` on a Debian-based host.

```
git clone https://github.com/cipher-linux/cipher-linux.git
cd cipher-linux
sudo lb clean && sudo lb config && sudo lb build
```

The ISO appears in the project folder when the build finishes. See [CONTRIBUTING.md](CONTRIBUTING.md) for build gotchas learned the hard way.

## Team

| Role                  | Contributor                                                                                                                                                    |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Lead Builder          | [@sachin-linux](https://github.com/sachin-linux)                                                                                                               |
| Testing & Feedback    | [@Govindaraju5796](https://github.com/Govindaraju5796), [@Abhijith2620](https://github.com/Abhijith2620), [@Shafiahamad059](https://github.com/Shafiahamad059) |
| Infrastructure        | [@akhileshn15](https://github.com/akhileshn15)                                                                                                                 |
| Community & Marketing | TBD                                                                                                                                                            |

## Contributing

Contributions, bug reports and testers are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines before opening an issue or PR. Security issues: see [SECURITY.md](SECURITY.md).

## Follow the Journey

We're documenting the entire build process in the open, the wins and the multi-day debugging rabbit holes.

- GitHub: [github.com/cipher-linux](https://github.com/cipher-linux)

## Use Responsibly

CIPHER Linux is for learning and authorised testing. Only scan, test or attack systems and networks you own or have written permission to test.

## License

CIPHER Linux is licensed under the [GNU GPLv3](LICENSE).

---

*Built with ❤️ by the CIPHER Linux team*
