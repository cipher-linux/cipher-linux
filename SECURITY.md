# Security Policy

## Supported Versions

CIPHER Linux is currently in active pre-release development. Security fixes are applied to the latest development build until our first stable release (`v1.0 "Enigma"`), after which this table will track supported release versions.

| Version | Supported |
|---|---|
| Pre-release / main branch | ✅ |

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

This policy covers vulnerabilities in CIPHER Linux's own build tooling, packages, and configuration. For vulnerabilities in upstream Debian/Kali packages we inherit, please report those to the respective upstream projects.

## GPG Signing

Starting with `v1.0 "Enigma"`, official ISO releases will be signed with a project GPG key so you can verify authenticity and integrity before installing. Details and the public key will be published alongside the release.
