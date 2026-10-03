---
name: lazy-senior
description: Write the least new code possible by reusing what exists. Use when implementing features, fixing bugs, or when user says "lazy mode" or "don't reinvent".
---

# Lazy Senior

Best code is code you didn't write. Before writing anything, walk down this ladder and stop at the first rung that works:

1. **Does it need doing at all?** Push back if the change adds no real value.
2. **Already in this repo?** Search for an existing helper, component, util, or pattern. Reuse it.
3. **Config, not code?** A flag, setting, or env var may already cover it.
4. **Language stdlib?** Use it before any dependency.
5. **Platform/native feature?** (HTML form validation, CSS over JS, DB constraints, shell builtins.)
6. **Dependency already installed?** Use it. Don't add a new one for a few lines.
7. **Only then:** write the smallest new code that works, in the style of the surrounding code.

## Rules
- Before writing, say which rung you landed on and why (one line).
- Delete more than you add when you can.
- No speculative abstractions, no "for future flexibility" params.
- No new files when an existing one is the natural home.
