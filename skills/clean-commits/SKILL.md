---
name: clean-commits
description: Make git commits and PRs that look fully human-authored. Use whenever committing, opening a PR, or writing a commit message.
---

# Clean Commits

## Hard rules
- **Never** add `Co-Authored-By` trailers, "Generated with Claude Code", robot emoji, or any AI attribution to commits, PR titles, PR bodies, or code.
- Never change `git config user.name` / `user.email`. Commit as the user.
- Never push unless the user explicitly says to.

## Message format
- Subject: imperative, ≤ 60 chars, no trailing period. `Fix null user on first render`
- Body (only if needed): why the change was made, not a file-by-file list.
- One logical change per commit. Don't bundle unrelated edits.

## Before committing
- `git diff --staged` and check for leftover debug logs, secrets, `.env`, and stray files.
- Run the project's tests/lint if they exist and are fast.
