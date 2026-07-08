# AI writing tells — full catalogue

Source: Wikipedia:Signs of AI writing (WikiProject AI Cleanup). This is the
expanded reference — SKILL.md has the condensed working checklist. Come here
for the full vocabulary lists, more examples of each pattern, and the
historical/model-specific notes.

## Table of contents

1. Vocabulary by "chatbot era"
2. Content patterns (with more examples)
3. Punctuation and typography details
4. Formatting / markup tells
5. Model-specific fingerprints
6. Historical tells (mostly extinct now, useful for dating old text)
7. Ineffective indicators (do not use these alone)

---

## 1. Vocabulary by "chatbot era"

Overused words cluster and change over time as models are updated. A cluster
of words from one era in the same piece is a much stronger signal than any
single word.

**2023 – mid-2024 (GPT-4 era):** Additionally (sentence-opening), boasts,
bolstered, crucial, delve, emphasizing, enduring, garner, intricate /
intricacies, interplay, key (filler adjective), landscape (abstract noun),
meticulous / meticulously, pivotal, underscore, tapestry, testament,
valuable, vibrant.

**Mid-2024 – mid-2025 (GPT-4o era):** align with, bolstered, crucial,
emphasizing, enhance, enduring, fostering, highlighting, pivotal,
showcasing, underscore, vibrant.

**Mid-2025 onward (GPT-5 era):** emphasizing, enhance, highlighting,
showcasing — plus a shift toward the "notability/attribution" cluster below
rather than pure adjective puffery.

**Other model-specific words:** Grok overuses superficially "scientific"
vocabulary — causal, empirical, correlate — and continues to overuse
"underscore" longer than other models. "Concrete" (as in "concrete
evidence," "concrete examples") shows up disproportionately in AI-written
talk-page/comment replies specifically.

**Notability / attribution cluster (2025+, especially in bio/company
articles):** independent coverage, [local/regional/national] media outlets,
trade publications, profiled in, written by a leading expert, "maintains an
active social media presence."

Important caveat: this is about literal word overuse, not about synonyms.
"Underscore" being overused doesn't mean "emphasize" is also suspicious —
context matters, and some of these words have ordinary literal meanings
(e.g. "underscore" as a literal underline, "landscape" as actual terrain).

---

## 2. Content patterns, expanded

**Puffed-up significance / "importance inflation."** LLMs default to
treating almost any subject — a train station, a species of fish, a small
town — as though it needs its importance actively defended. Real example
pattern: *"Currently, there is no specific conservation assessment... However,
the general health of the Lake Malawi ecosystem is crucial for the survival
of this and other endemic species."* Notice the hedge-then-importance-claim
structure — acknowledging low significance and then asserting significance
anyway. Fix: if there's genuinely nothing notable to say, say less, don't
compensate with abstraction.

**Promotional / travel-brochure drift.** Even neutral prompts tend to
produce advertisement-like language: *"Nestled within the breathtaking
region of..., [town] stands as a vibrant town with a rich cultural
heritage."* Words to watch: nestled, in the heart of, boasts a, rich,
vibrant, diverse array, groundbreaking, renowned, showcasing. Fix: state
plain facts (location, population, founding) without scene-setting adjectives.

**"Generated debate/discussion" claims.** LLMs like to assert that a topic
"has sparked debate about X, Y, and Z" or "raises questions about..." without
any actual debate being cited. Fix: only keep if there's a real, sourced
discussion to point to.

**Rule-of-three lists used for comprehensiveness theater.** Three items
(often exactly three) used to make a claim feel thorough: *"raising
questions about identity, authenticity, and what it means to live on."* Fix:
cut to what's actually supported, or make the list genuinely reflect however
many real items there are (two, five, whatever).

---

## 3. Punctuation and typography, expanded

- **Em dashes:** LLMs use them far more than typical human prose of the same
  genre, almost always *with spaces around them* (" — "), often to punch up
  a rhetorical turn ("not X — it's Y"). A human em dash is usually used more
  sparingly and often without surrounding spaces, depending on style guide.
  This is a weak signal alone; strongest when combined with other tells.

- **Curly quotes/apostrophes ("smart quotes"):** ChatGPT and DeepSeek
  default to curly quotes/apostrophes; inconsistent mixing of curly and
  straight in the same piece is a stronger signal than curly quotes alone
  (which many legitimate tools — Word, iOS, CMOS-style copyediting — also
  produce). Gemini and Claude models typically do *not* default to curly
  quotes.

- **Placeholder/broken reference artifacts** (only relevant if you're
  cleaning up copy-pasted chatbot output, not original writing): stray
  tokens like `citeturn0search0`, `:contentReference[oaicite:0]{index=0}`,
  `oai_citation`, `[attached_file:1]`, `【85†L261-269】`, `[cite: 17]`. These
  are citation-rendering artifacts from copying chatbot UI output directly —
  always strip them, they carry zero information.

---

## 4. Formatting / markup tells

- **Inline-header vertical lists:** `- **Label:** description` repeated
  down a page. Very heavy Markdown users produce this naturally too (devs,
  Reddit/Discord/Slack users), so treat as a signal only when the *content*
  also reads as generic ("Key Statistics," "Route Details," "Management").

- **Title Case headings** for every heading, including small connector
  words — stronger in combination with other tells, weak alone.

- **Skipping heading levels** (jumping straight to `===` / h3 without an
  `==` / h2 above it) — very unlikely for a human doing manual formatting,
  fairly strong signal in wikitext specifically.

- **Markdown bleeding into non-Markdown targets** — asterisks, `##`
  headers, or fenced code blocks (` ```wikitext `) appearing in a context
  that doesn't render Markdown (wikitext, plain text field, email).

- **Small unnecessary tables** for content that reads more naturally as
  prose or an infobox — "Key Statistics of X (2024–2025)" two-column tables
  for a handful of facts.

- **Emoji as heading/bullet decoration** (👋 🧑‍💻 🌏 📬 🙏 in front of
  headers) — common in AI-generated user pages and casual comments,
  virtually never in encyclopedic prose.

---

## 5. Model-specific fingerprints

Different models have identifiably different "idiolects" — useful if you
know or suspect which tool produced a draft:

- **ChatGPT / Grok:** tend to zoom out to broader context more than
  Gemini/Claude; more likely to produce the "generated debate about X, Y, Z"
  pattern and heavier use of rule-of-three.
- **Gemini / Claude:** tend to be more concise than ChatGPT/Grok by
  default; Claude in particular rarely defaults to curly quotes.
- **Grok specifically:** favors pseudo-scientific vocabulary (causal,
  empirical, correlate) and a reversed negative-parallelism ("X, prioritizing
  Y rather than Z" instead of "not Z, but Y").

---

## 6. Historical tells (mostly pre-2024, useful for dating old text)

These were common in earlier chatbot output and are now rare in current
models, but are useful if you're assessing whether an *old* piece of text
(2022–2023) was AI-generated:

- **Didactic disclaimers:** "it's important to note that...," "it's crucial
  to remember...," inserted as safety-flavored hedges even in low-stakes
  contexts.
- **Section summaries / tidy conclusions:** "In summary," "In conclusion,"
  or an explicit "Conclusion" section restating the piece's thesis.
- **Explicit AI self-reference / refusals:** "As an AI language model, I
  can't directly add content to Wikipedia, but I can help you draft..."
- **Abrupt cutoffs mid-sentence** from old token-limit truncation.
- **Knowledge-cutoff disclaimers:** "As of my last knowledge update in
  [date], I don't have information about..."

---

## 7. Ineffective indicators — do not rely on these alone

These are commonly mistaken for AI tells but are weak or actively
misleading on their own. Don't strip these out reflexively:

- Perfect grammar — plenty of skilled human writers produce clean copy.
- Formal, academic, or "fancy" vocabulary in general — the AI-overused
  words are a specific narrow list, not "any long word."
- A mix of casual and formal, or "clinical" and "emotional," register — very
  common in genuine human writing (technical fields, neurodivergent writers,
  multi-author documents).
- Letter-like structure (salutation, sign-off) on its own — predates LLMs
  by decades.
- Occasional transition words (Additionally, Notably) — only a *reflexive,
  sentence-opening* pattern across many sentences is meaningful.
- Unsourced or uncited content — most under-cited writing on the internet
  predates any LLM.
- Odd but explainable formatting glitches (stray HTML tags, misplaced
  wiki-markup) — usually editor-tool bugs, not AI.
- Correct, working markup, even for complex templates — normal for anyone
  using a visual editor or preview button.
