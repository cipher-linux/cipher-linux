# Security Policy

## Supported Versions

CIPHER Linux is currently in active pre-release development. Security fixes are applied to the latest development build until our first stable release (`v1.0 "Enigma"`), after which this table will track supported release versions.

| Version | Supported |
|---|---|
| Latest release candidate (rc5) / main branch | ✅ |
| Older release candidate (rc1 to rc4) | ❌ |

## Reporting a Vulnerability

If you discover a security vulnerability in CIPHER Linux — in our build scripts, custom packages, branding hooks, or ISO configuration — please report it responsibly:

1. **Do not** open a public GitHub issue for security vulnerabilities
2. Instead, report it privately via GitHub's [Security Advisories](../../security/advisories/new) for this repo, or contact the maintainers directly through the channels listed in the main [README](README.md)
3. Include as much detail as possible: affected component, steps to reproduce, potential impact

## What to Expect

- Acknowledgement of your report within a reasonable timeframe
- An assessment of the issue and, if confirmed, a plan to fix it
- Credit in the release notes if you'd like (or anonymity, your choice)

## Scope

This policy covers vulnerabilities in CIPHER Linux's own build tooling, packages, and configuration. For vulnerabilities in upstream Debian packages we inherit, please report those to the respective upstream projects.

## GPG Signing

CIPHER Linux ISO releases are GPG-signed for authenticity and integrity verification. The public key and verification steps are published alongside each release and in [INSTALL.md](INSTALL.md)

| Releases | Signing key ID | Fingerprint |
|---|---|---|
| rc4 and later (including rc5) | `8A3F56EB7DF1265B` | `D033 F496 8BFA 3FC6 E486 5A01 8A3F 56EB 7DF1 265B` |
| rc2 and rc3 | `2B2C7B5EA01E52DC` | `49DF D2B3 26AF 3564 8255 D593 2B2C 7B5E A01E 52DC` |

Always check that the fingerprint of the key you imported matches this table before trusting a signature.
