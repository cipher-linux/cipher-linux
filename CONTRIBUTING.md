Contributing to CIPHER Linux 🔐

Thank you for your interest in contributing to CIPHER Linux!

## How to Contribute

1. Fork this repository
2. Create a new branch for your changes
3. Make your changes
4. Submit a Pull Request (PR)
5. Wait for review from the lead maintainer

## Areas to Contribute

* 🔧 **Building** — Distro architecture and packaging
* 🖥️  **Testing** — Hardware and software compatibility
* ☁️  **Infrastructure** — Hosting and repo management
* 📢 **Community** — Documentation and outreach

## Build Gotchas ⚠️

### Never bake files directly into includes.chroot/home/user/

If you place any file under `config/includes.chroot/home/user/...`, it pre-creates `/home/user` at build time — before the ISO ever boots.

On first boot, live-config's `0030-user-setup` script runs `user-setup-apply`, which uses `adduser` to create the live user's home directory. `adduser` only copies `/etc/skel` defaults into home when it creates that directory itself. If `/home/user` already exists (because it was baked in via `includes.chroot`), `adduser` sees it as already set up and silently skips the entire skel-copy step, meaning XFCE never gets its normal first-run `.config` scaffolding.

This caused a real regression: adding a pre-pinned dock config at `includes.chroot/home/user/.config/xfce4/panel/docklike-11.rc` broke boot entirely (xfconfd isn't running / D-Bus setup problem, failsafe session, no desktop). See issue #13 for the full writeup.

**Rule:** if a config file needs to exist in the user's home directory on first boot, put it under `config/includes.chroot/etc/skel/...` instead. That's the folder `adduser` copies from when creating a fresh home, so your file still lands in the right place without breaking anything.

* Wrong: `config/includes.chroot/home/user/.config/...`
* Right: `config/includes.chroot/etc/skel/.config/...`

### Calamares custom module instances go in `settings.conf`, not a separate file

If you're wiring up a custom Calamares module instance (e.g. `shellprocess@usershell`), the id/module/config mapping is declared via a top-level `instances:` key inside `/etc/calamares/settings.conf` itself. There is no separate `instances.conf` file that Calamares reads. Creating one will be silently ignored, and the module falls back to its default config file (`<modulename>.conf`), which usually has no real commands in it. This shows up as a cryptic "No script given" / "No commands to execute" warning in `calamares -D 8` debug output, with no indication that the instance file itself is the problem.

```yaml
instances:
- id:       usershell
  module:   shellprocess
  config:   shellprocess-usershell.conf
```

This caused new users to stay on `/bin/bash` after a Calamares install despite the shellprocess job and script both being correctly configured. The instance mapping itself was the missing piece.

### Calamares module configs may not exist until you add them

Calamares falls back to built-in defaults when a module has no config file, and some modules ship none at all. For example, no `partition.conf` was present on the ISO until we added one, so options such as the "Encrypt system" checkbox (`enableLuksAutomatedPartitioning`) were not under our control.

**Rule:** to change a Calamares module's behaviour, ship your own config at `config/includes.chroot/etc/calamares/modules/<module>.conf`. To check what an ISO really contains, run this in a live session:

```bash
sudo find / -xdev -name "<module>.conf" 2>/dev/null
```

If encryption is involved, also make sure `cryptsetup` and `cryptsetup-initramfs` are in the package lists. Without `cryptsetup-initramfs`, an encrypted install finishes but cannot unlock at boot.

### Always verify a fix actually landed in git before moving on

It's easy to test something live in a VM (or via `scp`/`cp` straight into a running system), confirm it works, and mentally file it as "done" without ever committing it to the real build source. The build source is what `lb build` reads from; a live VM or an installed system is a completely separate filesystem that vanishes the moment you rebuild.

This has bitten us more than once: a GRUB theme fix, a Plymouth splash rewrite and a gfxpayload cleanup were all tested and confirmed working live, but sat uncommitted for a full session (or longer) before anyone noticed `git log` didn't actually show the change. Each time, the fix looked "still broken" on the next rebuild. Not because the fix was wrong, but because it was never in the source at all.

**Rule:** after testing any fix live, immediately run `git status` and `git diff` on the specific file(s) you changed, before doing anything else. If the change doesn't show up as modified/staged, it isn't real yet. It only exists in the live environment and will be lost on the next rebuild.

* Wrong: test fix live → move on to the next task → assume it'll still be there
* Right: test fix live → `git status` / `git diff` to confirm → `git add` + `git commit` → then move on

## Code of Conduct

* Be respectful and constructive
* No spam or self-promotion
* Help others where possible

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for the full policy.

## Contact

Raise an issue or reach out via GitHub.

---

*CIPHER Linux — Community Inspired Platform for Hacking, Education and Research* 🔐
