# claude-skills

My plug-and-play skills for Claude Code.

## Vendored (git submodules)

- [caveman](https://github.com/JuliusBrussee/caveman): why use many token when few do trick. `caveman`, `caveman-commit`, `caveman-review`, etc.
- [ponytail](https://github.com/DietrichGebert/ponytail): laziest senior dev in the room. Reuse before writing. `ponytail`, `ponytail-review`, `ponytail-audit`, etc.

## Mine

| Skill | What it does |
|---|---|
| `no-slop` | Kills AI-sounding filler in code comments and writing. |
| `clean-commits` | Human-looking commits. No AI attribution, no auto-push. |
| `receipts` | Don't say "done" without proof it works. |
| `tldr` | Shortest useful explanation of code, errors, PRs. |

## Install

```bash
git clone --recursive <this repo>
./install.sh --list              # see everything available
./install.sh caveman ponytail    # pick some
./install.sh                     # all of them
./install.sh --remove caveman    # unplug one
```

Skills are symlinked into `~/.claude/skills`.
Per-project instead: `CLAUDE_SKILLS_DIR=.claude/skills ./install.sh caveman`

## Update caveman/ponytail

```bash
git submodule update --remote
```

## Add a skill

Make `skills/<name>/SKILL.md` with `name` and `description` frontmatter, then `./install.sh <name>`.
