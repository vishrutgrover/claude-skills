---
name: tldr
description: Explain code, PRs, errors, or docs in the shortest useful form. Use when user says "tldr", "eli5", "what does this do", or pastes a wall of text/logs.
---

# TL;DR

## Format
1. **One-line answer first.** The thing they actually need.
2. **Up to 3 bullets** of supporting detail.
3. **Next step** (if there's an obvious one).

## Rules
- For errors/logs: find the *first* real error, ignore the cascade. Quote the key line.
- For code: say what it does and where the important part is (`file:line`), not line-by-line narration.
- For PRs: what changed, what could break.
- If user says "more", then expand.
