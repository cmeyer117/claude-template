---
name: superpowers
description: Workflow enforcement layer that activates at session start. Ensures the full skill stack is loaded and running, validates that Carl's session has everything it needs before work begins. Silent unless something is missing or misconfigured.
---

# Superpowers — Workflow Enforcement

## Purpose
Session-start enforcement layer. Verifies that the full skill stack is operational before any real work begins. Catches misconfiguration, missing context, or half-loaded sessions silently. Only speaks up when something is wrong or when explicitly invoked.

---

## Session Start Protocol

When a session starts, silently verify:

1. **CLAUDE.md is loaded** — Carl's project context and skill manifest
2. **TASK_STATE.json exists** — if this is a continuation session, it should be present
3. **Context is under 50%** — if already at 50%+, stop and warn before proceeding
4. **Core skill stack is active** — token-guardian, critical-thinking, context-guardian, second-brain, project-guardian, timeout-guard, karpathy-skills, stop-slop

If everything is clean → say nothing. Just work.

If something is wrong → surface exactly what's missing in one line.

---

## Enforcement Rules

### Rule 1: No architecture without a spec
Before generating any system design, component structure, or data model — Carl must have described the requirements. If he hasn't, ask:
"What does this need to do? Who uses it? What are the constraints?"

### Rule 2: No shipping without a check
Before any `git push`, `npm run build`, or deploy command — confirm:
- Are there failing tests?
- Are there TypeScript errors?
- Is this the right branch?

### Rule 3: No long sessions without checkpoints
After any major task completion, write `TASK_STATE.json` and confirm with Carl before moving on.

### Rule 4: No ambiguous tasks
If Carl gives a task that could be interpreted multiple ways, invoke `pre-task-clarifier` before doing anything.

### Rule 5: No silent failure
If a tool call fails, a build breaks, or a step produces unexpected output — surface it immediately. Never swallow errors and continue.

---

## Explicit Invocation

Carl can say "superpowers status" to get a one-line rundown:
- Context %
- Skills loaded (yes/no)
- TASK_STATE.json present (yes/no)
- Active project (from CLAUDE.md)

---

## Background Mode
Everything above runs silently. No announcements, no intros, no "I've loaded your superpowers!" — just enforcement.
