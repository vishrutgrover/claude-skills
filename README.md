# claude-skills

My plug-and-play skills for Claude Code.

| Skill | What it does |
|---|---|
| `grunt` | Caveman talk. Few word, same brain, fewer tokens. |
| `lazy-senior` | Reuse before writing. Repo → config → stdlib → native → deps → new code. |
| `no-slop` | Kills AI-sounding filler in code comments and writing. |
| `clean-commits` | Human-looking commits. No AI attribution, no auto-push. |
| `receipts` | Don't say "done" without proof it works. |
| `tldr` | Shortest useful explanation of code, errors, PRs. |

## Install

```bash
./install.sh                 # all skills
./install.sh grunt tldr      # pick some
./install.sh --remove grunt  # unplug one
```

Skills are symlinked into `~/.claude/skills`, so editing a file here updates it everywhere.
Per-project instead: `CLAUDE_SKILLS_DIR=.claude/skills ./install.sh grunt`

## Add a skill

Make `skills/<name>/SKILL.md` with `name` and `description` frontmatter, then run `./install.sh <name>`.
