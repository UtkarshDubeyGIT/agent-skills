---
name: humanize
description: Rewrites AI-generated, stilted, or "over-polished" text so it reads like it was written by a specific human, not a chatbot. Use this whenever the user asks to "humanize" text, make something "sound less AI," "remove the AI tells," "de-AI" a draft, "fix the ChatGPT voice," or wants a piece edited so it won't get flagged as AI-written (Wikipedia drafts, essays, cover letters, articles, comments, LinkedIn posts, etc). Also use proactively when asked to "polish," "clean up," or "proofread" a draft and the draft itself contains classic LLM tells (em dashes, "delve/boasts/underscores," rule-of-three lists, "it's not just X, it's Y," inline-bold list headers, canned "plays a vital role" filler, tidy "in conclusion" wrap-ups) — flag this to the user and offer to humanize it, don't just leave the tells in place.
---

# Humanize

This skill rewrites text to remove the statistical fingerprints of LLM output —
not by tricking a detector, but by restoring the specificity, unevenness, and
plain-spokenness that generic AI phrasing smooths away. It's built from a
field guide of real, catalogued AI-writing patterns (Wikipedia:Signs of AI
writing), so the checklist below is grounded in actual observed tells, not
vibes.

## The core idea

LLMs generate the statistically most likely next words. That means they
regress to the mean: specific, unusual, textured facts get replaced with
generic, positive-sounding, broadly-applicable language. A sentence like
"invented the first automatic train coupler in 1873" tends to drift toward
"was a revolutionary pioneer whose work left a lasting legacy." The claim gets
*louder* while the actual information gets *blurrier*.

Humanizing text is mostly the reverse operation: find the blurry, generic,
loudly-important-sounding sentence, and either cut it or replace it with the
one specific, checkable fact it was standing in for. Everything else in this
skill — the word lists, the punctuation quirks, the formatting habits — is
just a catalogue of where that blurriness tends to hide.

## Workflow

1. **Read the whole text first.** Understand what it's actually trying to say
   before touching a sentence. Don't lose or invent facts while editing —
   humanizing is a rewrite of *voice*, not a rewrite of *content*. If a
   sentence is pure filler with no real content, it's fine to cut it entirely
   rather than search for something to replace it with.

2. **Scan against the checklist below**, then also check
   `references/ai-tells.md` for the fuller catalogue (word lists by era,
   more examples of each pattern) if the text is long, formal, or
   high-stakes (e.g. a Wikipedia article, an academic piece).

3. **Rewrite pass.** Go section by section. For each flagged pattern, apply
   the fix described below rather than just deleting the word — swapping
   "delve into" for "explore" doesn't fix anything if the sentence around it
   is still a generic significance-statement.

4. **Vary the rhythm.** Human writing is uneven: sentence lengths jump
   around, some paragraphs are short, ideas don't always resolve into a neat
   triplet. After the rewrite pass, read through once just for rhythm — if
   every paragraph is the same length and every list has exactly three
   items, break that up.

5. **Don't overcorrect.** See "What NOT to touch" below. Perfect grammar,
   formal tone, and the plain word "is" are not AI tells — stripping them out
   in a panic makes text worse, not more human.

## Checklist of patterns to fix

### Content-level (the actual substance of the tell)

- **Unearned significance statements** — sentences whose only job is to
  assert that something matters, without adding a new fact. *"This marked a
  pivotal moment in..."* / *"underscores its enduring legacy..."* / *"plays a
  vital role in the broader ecosystem..."* Fix: delete the sentence, or
  replace it with the specific fact that would actually justify the claim
  (a date, a number, a name, a mechanism). If no such fact exists, the claim
  was probably synthesis — cut it.

- **Notability-by-listing** — piling up outlets/sources to *prove* importance
  rather than just citing them normally ("has been featured in Vogue, Wired,
  CNN, and other prominent outlets"). Fix: cite what's actually needed for
  the claim being made; drop the "and other outlets" padding.

- **Vague / weasel attribution** — "researchers believe," "some critics
  argue," "industry observers have noted" with no one named, or a claim
  attributed to "several sources" when only one or two are actually cited.
  Fix: name the actual source, or cut the claim if it can't be attributed to
  anyone specific.

- **Canned "Challenges" / "Future Outlook" wrap-up** — a rigid closing
  section that opens with "Despite its [positive thing], X faces several
  challenges..." and closes with vague optimism about "ongoing efforts."
  Fix: only keep this if there's a real, sourced challenge to report; state
  it plainly without the despite-framing scaffolding.

- **Superficial analysis tacked onto facts** — a factual sentence gets a
  trailing "-ing" clause that editorializes: *"...serving as a testament to
  its enduring cultural significance."* Fix: cut the trailing clause, let the
  fact stand on its own.

- **Knowledge-gap speculation** — "while specific details are limited, it
  likely..." followed by a guess dressed as insight. Fix: either state that
  the information isn't available and stop, or leave the sentence out
  entirely. Don't speculate and label it a finding.

### Vocabulary

LLMs overuse a specific, fairly narrow set of words far more than human
writers of comparable text. One or two of these in a piece is a coincidence;
a cluster of them is a real signal. Common offenders: **delve, boasts,
underscores, showcases, testament, tapestry, intricate/intricacies,
meticulous(ly), pivotal, crucial, robust, vibrant, fosters/fostering,
garners, key (as a filler adjective), landscape (as an abstract noun — "the
evolving landscape of..."), interplay, enduring, bolstered, align/aligns
with.** See `references/ai-tells.md` for the full list broken down by which
"era" of chatbot tends to overuse which words — useful if you want to match
or avoid a specific model's fingerprint.

Fix: don't just swap in a thesaurus synonym — that just trades one generic
word for another. Rewrite the clause so it says something concrete instead.
"The bridge underscores the town's industrial heritage" → either state the
actual industrial-heritage fact the bridge relates to, or drop the clause.

### Syntax and sentence patterns

- **Avoidance of plain "is/has."** LLMs prefer "serves as," "stands as,"
  "represents," "boasts," "offers," "features" over the flat, correct "is"
  or "has." *"The gallery serves as LAAA's exhibition space"* → *"The
  gallery is LAAA's exhibition space."* Plain copulas are not a weakness;
  restore them.

- **Negative parallelism / false contrast.** "Not only X, but also Y." "It's
  not just about X — it's about Y." "This isn't dissolution, it's
  becoming." Fix: usually you can just state Y, or state both facts as
  separate plain sentences. The contrast structure is rarely doing real
  work.

- **Rule of three.** Adjectives, phrases, or list items reflexively grouped
  in threes to sound comprehensive ("safe, reliable, and efficient").
  Fix: cut to the one or two that are actually true/relevant, or expand to a
  real, uneven list if there genuinely are more than three things to say.

- **Hedging qualifiers as filler.** "tends to," "can potentially," "in many
  cases" used reflexively rather than because the hedge is actually needed.
  Fix: state the claim plainly if it's true, or don't make it.

### Structure and formatting

- **Inline-header vertical lists** — "**Bold Label:** description text"
  repeated as bullets, for content that would read more naturally as prose
  (or as a real Wikipedia/markup list, not a Markdown-style bolded one).
  Fix: convert to prose paragraphs unless the content is genuinely tabular
  or scannable data (like a spec sheet).

- **Section headings in Title Case for every word.** Fix: sentence case,
  unless the target's own style guide calls for title case.

- **Boldface used mechanically** for "key takeaways" style emphasis on
  every instance of a term. Fix: remove almost all of it; bold only what
  would genuinely be bolded in the surrounding style.

- **Em dashes used as a tic** — reaching for " — " (with spaces) where a
  comma, period, colon, or parenthesis would be more natural, especially to
  punch up a rhetorical contrast. Fix: swap most of them for the punctuation
  a human editor in that context would actually use. Keep an em dash only
  where it's the clearly best tool.

- **Curly ("smart") quotes and apostrophes** inconsistently mixed with
  straight ones, or used where the target platform expects straight quotes
  (wikitext, code, plain text fields). Fix: match whatever quote style the
  destination actually uses. Note this one is weak on its own — lots of
  legitimate tools (Word, iOS, CMOS-style publishing) also produce curly
  quotes.

- **Markdown syntax leaking into non-Markdown output** — asterisks for
  bold, `##` headers, in a context (wikitext, plain email, a text field)
  that doesn't render Markdown. Fix: convert to whatever the destination
  actually supports, or plain text.

- **Emoji used as heading decoration** (👋, 🎯, 📌 in front of section
  titles). Fix: remove unless the venue is genuinely casual/emoji-native.

## What NOT to touch

Don't "fix" things that only look like AI tells but are actually normal
human writing — overcorrecting here makes prose worse and reads as
paranoid, not more human:

- Perfect grammar and spelling. Plenty of skilled human writers produce
  clean copy.
- A formal or academic register on its own.
- Plain, correct use of transition words (*"Additionally," "However,"*)
  used occasionally — only a *reflexive, sentence-opening* pattern of these
  is a real signal.
- Unsourced claims — most under-cited writing on earth predates any LLM.
- A mix of casual and formal register — this is extremely common in
  genuine human writing (technical fields, code-switching, multiple
  authors).
- Correct, working markup/formatting for the actual target platform.

If in doubt, ask: does removing this genuinely add specificity or voice, or
am I just deleting a word because it's on a list? Only make the edit if the
answer is the former.

## Output

Unless the user asks for a diff or a list of changes, just return the
rewritten text directly, preserving the original's format (plain text,
Markdown, wikitext, etc.) and length envelope — humanizing should not turn a
short paragraph into a much longer one, or vice versa, since padding itself
is often part of the AI signature. If the piece is long or the user seems to
want to understand the specific changes, briefly summarize the main patterns
that were fixed after delivering the rewrite (e.g., "removed 4 generic
significance statements, cut the em-dash overuse, converted the bulleted
list to prose").
