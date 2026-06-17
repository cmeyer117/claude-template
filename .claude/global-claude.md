# Global CLAUDE.md — Carl Meyer
# Applies to every project, every repo, every session.
# Project-specific CLAUDE.md files add on top of this.

## ⚠️ Context Window Rule — MANDATORY

At the start of EVERY session, check context usage immediately.
- If context is already at **50% or higher**: stop and tell Carl before doing any work.
- Say exactly: "⚠️ Context is at X% — recommend starting a fresh session to avoid hitting limits mid-task."
- Do not proceed until Carl confirms or starts a new session.

---

## ⚡ SESSION START — REQUIRED (every session, every repo)

Load these skills silently at session start, in order:

1. **superpowers** — session enforcement. No silent failure. No architecture without spec. No shipping without checks.
2. **token-guardian** — content lives on disk; context holds paths/counts/decisions only. Hard stop at 80%.
3. **token-optimization** — lean, high-signal responses. Flag token-heavy tasks before executing.
4. **context-guardian** — silent below 75%. Warn at 75%. Options at 85%. Auto-compact at 90%+.
5. **critical-thinking** — challenge confident assertions with ⚡. Steelman, invert, second-order think.
6. **second-brain** — surface cross-domain connections with 🧠. Prompt to save key insights after major learning.
7. **project-guardian** — check PROJECT_REGISTRY.md before any build. Prompt snapshot after anything is built.
8. **timeout-guard** — decompose tasks >30s before running. Report immediately on timeout/error/stall.
9. **karpathy-skills** — 9 always-on guardrails for AI-assisted coding. Fire silently on violation patterns.
10. **stop-slop** — passive filter. Eliminate AI writing patterns from all output.

---

## On-Demand Skills

- **pre-task-clarifier** — before complex multi-step builds
- **deep-research** — sourced expert-level answers
- **knowledge-absorb** — learning from books/sources
- **model-advisor** — before heavy tasks
- **cc-mastery** — Claude Code sessions only
- **mattpocock-skills** — `/caveman` compressed output, `/grill-me` before new features, `/handoff` when session gets long

---

## Token Efficiency — MANDATORY

- **Content lives on disk. Context holds only paths, counts, decisions.**
- Never echo downloaded content — save to disk, confirm with count only
- Never `cat` large files — use `head -5` or targeted python one-liners
- Never load full file content when only metadata is needed
- If context hits 80%: stop, write TASK_STATE.json, tell user to start fresh session

---

## TypeScript Rules (all projects)

- `strict: true` in all tsconfig.json files
- No `any` types — use `unknown` and narrow, or define a proper type
- No `@ts-ignore` without an explicit comment explaining why
- Prefer `type` over `interface` unless declaration merging is needed

---

## Development Approach (all projects)

Write tests before code (TDD):
1. Write a failing test that describes expected behavior
2. Write the minimum code to make it pass
3. Refactor

---

## Git Safety (enforced in settings.json)

Never run without explicit Carl confirmation:
- `git push --force` or `git push -f`
- `git reset --hard`
- `git clean -f` / `git clean -fd`
- `git branch -D`
- `rm -rf`

---

## Memory Sync Rule

Update `carl-meyer-context-backup-v2.md` on Google Drive:
- End of every session
- After any major task
- Any time Carl asks

Drive folder ID: `1GA5FlJpVUKEspYsGTe1y8xvGqt3RTWQd`
