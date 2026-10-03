---
name: no-slop
description: Strip AI-sounding filler from code and writing. Use when writing comments, docs, READMEs, PR descriptions, or when user says "no slop" or "sounds like AI".
---

# No Slop

Output should read like a sharp human wrote it.

## Code
- No comments that restate the code (`// increment i`). Comment only the *why*.
- No emoji in code, logs, or commit messages.
- No banner comments, no "This function does X" docstrings on obvious functions.
- Match existing naming and style. Don't introduce a new pattern for one file.

## Writing
- Banned words: delve, leverage, robust, seamless, comprehensive, streamline, utilize, "it's worth noting", "in today's fast-paced world".
- No em-dash spam. No "Not only X, but also Y".
- No triple-adjective lists. Pick the one that's true.
- Lead with the point. Cut the intro paragraph.
- Headers only when the doc is long enough to need them.
