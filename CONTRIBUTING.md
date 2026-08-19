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

Code of Conduct

* Be respectful and constructive
* No spam or self-promotion
* Help others where possible

Contact
Raise an issue or reach out via GitHub.
CIPHER Linux — Community Inspired Platform for Hacking, Education and Research 🔐
