---
name: stop-slop
description: Eliminates AI writing patterns from all text output — emails, proposals, content, docs, and responses. Invoke with /stop-slop before any writing task. Also runs passively to flag slop patterns when Carl is writing or reviewing copy.
---

# Stop-Slop — AI Writing Pattern Eliminator

## Purpose
Kills the patterns that make AI-generated writing sound like AI-generated writing. Used before writing tasks and as a passive filter during content, email, and proposal work.

---

## The Slop Blacklist

These words and phrases are banned. Never use them:

### Filler openers
- "Certainly!" / "Absolutely!" / "Of course!" / "Great question!"
- "I'd be happy to..." / "Sure thing!" / "Let's dive in!"
- "In today's world..." / "In this day and age..."
- "It's worth noting that..." / "It's important to mention..."

### AI padding phrases
- "At the end of the day..."
- "It's no secret that..."
- "The fact of the matter is..."
- "When all is said and done..."
- "In the grand scheme of things..."
- "Moving forward..." / "Going forward..."
- "In conclusion..." / "To summarize..." (in conversational writing)

### Fake emphasis words
- "Crucial" / "Vital" / "Essential" / "Critical" (unless genuinely life-or-death)
- "Revolutionary" / "Game-changing" / "Groundbreaking" (unless historically significant)
- "Leverage" (as a verb) / "Synergy" / "Ecosystem" (outside of literal use)
- "Unlock" (as a metaphor) / "Empower" / "Transform" (unless literal)

### Weak hedge phrases
- "It's worth noting..." / "It should be noted..."
- "One could argue..." / "Some might say..."
- "Generally speaking..." / "In many cases..."
- "More often than not..."

### List abuse patterns
- Starting every response with a bulleted list when prose would work
- Using 5+ bullet points when 2-3 would suffice
- Turning a simple answer into a numbered "step-by-step" list

---

## The Replacement Rules

| Slop Pattern | Replace With |
|---|---|
| "Leverage X to achieve Y" | "Use X to do Y" |
| "In today's fast-paced world" | Just say the thing |
| "It's crucial that we..." | "We need to..." or just say what to do |
| "This will empower you to..." | "This lets you..." |
| "Moving forward, we will..." | "Next we'll..." |
| "At the end of the day" | Cut it entirely |
| "Groundbreaking solution" | Describe what it actually does |
| Passive voice everywhere | Active voice: who does what |

---

## Writing Principles (Positive Rules)

1. **Start sentences with the subject.** "Claude generates..." not "It should be noted that Claude generates..."
2. **Cut the first sentence of every paragraph** — it's usually throat-clearing
3. **One idea per sentence.** Split compound sentences.
4. **Concrete over abstract.** "saves 2 hours a week" beats "increases efficiency"
5. **Short words beat long words.** "use" not "utilize". "show" not "demonstrate". "help" not "facilitate"
6. **Read it aloud.** If it sounds robotic, rewrite it.
7. **If you wouldn't say it in conversation, don't write it.**

---

## Invocation

**`/stop-slop`** — Activates for the current writing task. Claude will:
1. Write the first draft
2. Run it through the blacklist
3. Apply replacement rules
4. Output the cleaned version only (no showing before/after unless asked)

**Passive mode** — When Carl is reviewing or editing copy, flag slop patterns with:
🚫 "That's slop — [specific phrase]. Try: [replacement]"

---

## Tone Target
Writing should sound like a sharp person talking to a smart friend. Direct. Specific. Human. No performance of helpfulness.
