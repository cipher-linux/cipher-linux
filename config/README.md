# config/ — Contributor Notes

This file explains a few things in this folder that look like duplicates
or dead files but are actually intentional, so you don't accidentally
delete something load-bearing.

## Wallpaper — three copies, on purpose

Three copies of `cipher-wallpaper.png` exist, each used by a different
subsystem:

- `usr/share/backgrounds/cipher-wallpaper.png`
  Used by `config/hooks/live/01-set-wallpaper.hook.chroot` via
  `update-alternatives` — this is the fix that actually solved the
  wallpaper-not-showing bug end to end.

- `usr/share/backgrounds/cipher/cipher-wallpaper.png`
  Used by `config/includes.chroot/usr/local/bin/cipher-set-wallpaper`,
  which sets xfconf desktop properties directly.

- `usr/share/wallpapers/cipher-wallpaper.png`
  Used by `GRUB_BACKGROUND` in
  `config/includes.chroot/etc/default/grub.d/99-cipher-grub.cfg`
  — GRUB's own boot background, unrelated to the desktop wallpaper.

If you're touching wallpaper behavior, check `grep -rn` for the actual
path before assuming any of these three are unused.

## GRUB theme — the real path

The only GRUB theme live-build actually loads is:

    config/includes.chroot/boot/grub/themes/cipher/

Confirmed via `GRUB_THEME=` in
`config/includes.chroot/etc/default/grub`. Any other `grub/themes/cipher`
folder you find elsewhere in the project is a stale draft — check with
`grep -rn "GRUB_THEME"` before trusting a different path.

## Hook numbering matters

Hooks in `config/hooks/live/` run in filename order. Some are numbered
high (`99-...`) on purpose because they depend on earlier stages
(e.g. `config/includes.chroot` being copied into the chroot first).
Don't renumber a hook without checking why it's numbered the way it is.
