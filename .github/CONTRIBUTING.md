# Contributing to CIPHER Linux

First off, thanks for considering contributing — CIPHER Linux is built by and for people learning Linux and cybersecurity, so contributions at every skill level are welcome.

## Ways to Contribute

- **Testing** — try the latest ISO on real hardware or VMs, report what breaks
- **Bug reports** — found something broken? Open an issue
- **Documentation** — improve guides, fix typos, clarify install steps
- **Packaging** — help build or maintain `.deb` packages for the CIPHER repo
- **Branding/design** — wallpapers, icons, GRUB/Plymouth themes
- **Code** — fixes or features for build scripts, hooks, tooling

## Before You Start

- Check open [Issues](../../issues) to see if your bug/idea is already tracked
- For anything non-trivial, open an issue first to discuss the approach before writing code
- Be respectful — see our [Code of Conduct](CODE_OF_CONDUCT.md)

## Reporting Bugs

Open an issue and include:
- What you expected to happen vs what actually happened
- Steps to reproduce
- Your environment (VM or bare metal, host specs, ISO version)
- Screenshots/logs if relevant

## Submitting Changes

1. Fork the repo and create a branch from `main`:
   `git checkout -b fix/short-description`
2. Make your changes, keeping commits focused and descriptive
3. Test your changes locally where possible (e.g. rebuild the ISO if you touched build config)
4. Open a Pull Request against `main` with:
   - A clear description of what changed and why
   - Any relevant issue number (`Fixes #123`)
5. A maintainer will review and may ask for changes before merging

## Commit Message Style

Keep commits short and descriptive, present tense:
- `Fix GRUB theme font path`
- `Add Calamares branding config`
- `Update README roadmap section`

## Development Setup

CIPHER Linux is built using `live-build`. Detailed build environment setup instructions live in [docs](../../wiki) (coming soon). If you're just getting started, open an issue and we'll help point you in the right direction.

## Questions?

Open a [Discussion](../../discussions) or reach out via the links in the main [README](README.md).
