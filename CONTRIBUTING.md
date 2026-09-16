Contributing to CIPHER Linux 🔐
Thank you for your interest in contributing to CIPHER Linux!
How to Contribute

1. Fork this repository
2. Create a new branch for your changes
3. Make your changes
4. Submit a Pull Request (PR)
5. Wait for review from the lead maintainer

Areas to Contribute

* 🔧 Building — Distro architecture and packaging
* 🖥️ Testing — Hardware and software compatibility
* ☁️ Infrastructure — Hosting and repo management
* 📢 Community — Documentation and outreach

Build Gotchas ⚠️

Never bake files directly into includes.chroot/home/user/

If you place any file under config/includes.chroot/home/user/..., it pre-creates /home/user at build time — before the ISO ever boots.

On first boot, live-config's 0030-user-setup script runs user-setup-apply, which uses adduser to create the live user's home directory. adduser only copies /etc/skel defaults into home when it creates that directory itself. If /home/user already exists (because it was baked in via includes.chroot), adduser sees it as already-set-up and silently skips the entire skel-copy step — meaning XFCE never gets its normal first-run .config scaffolding.

This caused a real regression: adding a pre-pinned dock config at includes.chroot/home/user/.config/xfce4/panel/docklike-11.rc broke boot entirely (xfconfd isn't running / D-Bus setup problem, failsafe session, no desktop). See issue #13 for the full writeup.

Rule: if a config file needs to exist in the user's home directory on first boot, put it under config/includes.chroot/etc/skel/... instead. That's the folder adduser copies from when creating a fresh home, so your file still lands in the right place without breaking anything.

Wrong: config/includes.chroot/home/user/.config/...
Right: config/includes.chroot/etc/skel/.config/...

Calamares custom module instances go in settings.conf, not a separate file
If you're wiring up a custom Calamares module instance (e.g. shellprocess@usershell), the id/module/config mapping is declared via a top-level instances: key inside /etc/calamares/settings.conf itself — there is no separate instances.conf file that Calamares reads. Creating one will be silently ignored, and the module falls back to its default config file (<modulename>.conf), which usually has no real commands in it — showing up as a cryptic "No script given" / "No commands to execute" warning in calamares -D 8 debug output, with no indication the instance file itself is the problem.

instances:
- id:       usershell
  module:   shellprocess
  config:   shellprocess-usershell.conf

This caused new users to stay on /bin/bash after Calamares install despite the shellprocess job and script both being correctly configured — the instance mapping itself was the missing piece.

Always verify a fix acutally landed in git before moving on

it's easy to test something live in a VM (or via scp/cp straight into running system), confirm it works, and mentally file it as "done" - without ever actually committing to the real build source. The build source is what lb build reads from; a live VM or an installed system is a completely seperate filesystem that vanished the moment you rebuild.

This has bittten us more than once: a GRUB theme fix, a Plymouth splash rewrite and a gfxpayload cleanup were all tested and confirmed working live, but sat uncommitted for a full session (or longer) before anyone noticed git log didn't actually show the change. Each time, the fix loaded "still broken" on the next rebuild - not because the fix was wrong, but because it was never in the source at all.

Rule: after testing any fix live, immediately run git status and git diff on the specific file(s) you changed, before doing anything else. if the change doesn't show up as modified/staged. it isn't real yet - it only exists in the live environment and will be lost on the next rebuild.

Wrong: test fix live → move on to the next task → assume it'll still be there"
Right: test fix live → git status/git diff to confirm → git add + git commit → then move on

Code of Conduct

* Be respectful and constructive
* No spam or self-promotion
* Help others where possible

Contact
Raise an issue or reach out via GitHub.
CIPHER Linux — Community Inspired Platform for Hacking, Education and Research 🔐
