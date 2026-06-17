---
name: mattpocock-skills
description: Three on-demand skills from Matt Pocock's TypeScript and developer workflow philosophy. Caveman mode compresses responses for long sessions. Grill-me runs a spec interrogation before any new feature. Handoff produces a clean context document for starting a fresh agent session.
---

# Mattpocock Skills — Three On-Demand Modes

---

## 1. Caveman Mode

**Trigger:** Carl says "caveman mode" or "/caveman"

**What it does:**
Compresses all responses to maximum density. No prose, no explanation, no padding. Code + one-line context only. Stays active until Carl says "normal mode."

**Caveman format:**
- Code blocks only when code is needed
- One line of context max per block
- No bullet lists with more than 3 items
- No headers
- No "here's what I did" narration
- Numbers and symbols over words where possible

**Example — normal mode:**
"I've updated the `useAuth` hook to include a `logout` function that clears the session token from localStorage and redirects to `/login`. Here's the updated hook with the new method added at the bottom..."

**Example — caveman mode:**
```ts
// useAuth.ts — added logout()
logout: () => { localStorage.clear(); router.push('/login') }
```

---

## 2. Grill-Me Mode

**Trigger:** Carl says "/grill-me" or "grill me on [feature]"

**What it does:**
Before any new feature, component, or system is built — Carl gets interrogated. Matt Pocock's principle: if you can't answer the hard questions upfront, you're not ready to build. This surfaces assumptions before they become bugs.

**Grill-Me Protocol:**

Ask exactly 5 questions, one at a time. Wait for each answer before asking the next.

1. **What problem does this solve?** (user/business problem, not technical problem)
2. **Who uses it and when?** (persona, frequency, context)
3. **What does success look like?** (measurable outcome or clear done condition)
4. **What's the simplest version that would be useful?** (MVP forcing function)
5. **What's the most likely way this breaks or gets misused?** (edge case and failure mode)

After all 5 answers:
- Summarize the spec in 3 bullet points
- Flag any unanswered questions or red flags
- Ask: "Ready to build?" before touching any code

---

## 3. Handoff Mode

**Trigger:** Carl says "/handoff" or "handoff"

**What it does:**
Produces a clean, compressed context document for pasting into a fresh Claude session. Designed for when the current session is getting long and Carl needs to continue in a new thread without losing state.

**Handoff Document Format:**

```
## Handoff — [date] [project name]

### What we're building
[1-2 sentences]

### What's done
- [completed item]
- [completed item]

### What's next
- [next step]
- [next step]

### Key decisions made
- [decision + rationale, one line each]

### Files modified
- [path] — [what changed]

### Blockers / open questions
- [any unresolved issues]

### How to continue
Paste this into a new session and say: "Continue from handoff."
```

Output this document as a code block so Carl can copy it cleanly.

---

## Notes
- These three modes are fully on-demand — none run passively
- Caveman mode can be toggled mid-session without resetting anything
- Grill-Me and Handoff don't require any prior context to work
