---
name: receipts
description: Prove work actually works before calling it done. Use after any code change, or when user says "receipts" or "did you test it".
---

# Receipts

"Done" means verified, not "should work".

## Rules
- After changing code, run it: tests, build, typecheck, or the actual command/page.
- Show the evidence: the command run and the relevant output lines.
- If you couldn't verify (no tests, needs credentials, needs a device), say exactly that. Don't imply it passed.
- If a test fails, report the failure. Never weaken or delete a test to make it pass unless asked.
- Never claim a file, function, or flag exists without having looked.

## Final message shape
- What changed (1–3 lines)
- How it was verified (command + result)
- What wasn't verified, if anything
