# Contributing to CIPHER Linux

Quick rules so we're all working the same way. Keep it simple, follow this, and things stay clean.

## Branch Naming

Format: `type/short-description`

- `feature/wifi-driver-fix`
- `fix/installer-crash`
- `docs/readme-update`
- `o-series/o3-live-build`

Use lowercase, hyphens not spaces. Keep it short but clear.

## Commit Messages

Format: `type: short description`

Examples:
- `fix: resolve WiFi detection on boot`
- `feat: add custom repo signing script`
- `docs: update O3 module notes`
- `test: add round 1 boot checklist results`

Types: `feat`, `fix`, `docs`, `test`, `chore`, `refactor`

Keep the first line under 60 characters. If you need more detail, add it below a blank line.

## Workflow

1. Pull latest `main` before starting any work
2. Create a branch from `main` using the naming format above
3. Make your changes, commit with clear messages
4. Push your branch and open a Pull Request into `main`
5. Fill out the PR template (auto-shows when you open a PR)
6. Get at least one review before merging
7. Delete your branch after merge

## Reporting Bugs

Use the **Bug Report** issue template (Issues tab → New Issue). Don't just message on WhatsApp — log it so it's tracked.

## Suggesting Features

Use the **Feature Request** issue template. Same idea — keep it in GitHub, not just chat.

## Questions

If you're stuck or unsure where something goes, ask in the team WhatsApp before guessing. Better to ask than to push something that breaks main.
