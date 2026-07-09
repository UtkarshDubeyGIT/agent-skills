# AI writing tells — full catalogue

Source: [Wikipedia:Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) (WikiProject AI Cleanup). This is the expanded reference — the main SKILL.md has the condensed working checklist. Come here for the full vocabulary lists by era, many more real examples of each pattern, model-specific fingerprints, and the anti-patterns advice.

## Table of contents

1. Caveats (critical — read these first)
2. The core problem (regression to the mean)
3. Content tells — expanded with real examples
4. Language & grammar tells (the AI idiolect)
5. Vocabulary by "chatbot era"
6. Punctuation and typography
7. Formatting / markup tells
8. Wikitext-specific tells
9. Model-specific fingerprints
10. Historical tells (mostly extinct, useful for dating)
11. Ineffective indicators (do not use these alone)
12. Anti-patterns for editors

---

## 1. ⚠️ Caveats — read these first

**These signs are clues, not proof.** This list is *descriptive*, not *prescriptive* — it consists of observations, not rules. Many of these patterns can be found in human writing (editorials, blogs, fan fiction, press releases). The presence of any single pattern is not evidence of AI generation.

**Do not rely solely on AI detection tools** (GPTZero, etc.). They have non-trivial error rates and can be fooled by paraphrasing, markup changes, spacing changes, and models not seen during training. A high AI-detection score is **not** a valid criterion for action.

**Do not rely too much on your own judgment.** A 2025 study found human ability to distinguish LLM text from human is no better than random chance (57% recognition). Heavy LLM users achieve ~90% accuracy — meaning 1 in 10 accusations is a false positive. People who don't use LLMs much do only slightly better than random chance.

**Human speech is already being influenced by LLMs.** Since 2024, studies have detected significant LLM influence in spoken content (e.g., conversational podcasts) and written text. The lines are getting blurrier every year.

**Signs point to deeper problems, not the signs themselves.** While surface issues (excessive boldface, broken markup) are easy to fix, they can point to much more serious policy risks: synthesis, original research, puffery, lack of sourcing. Fix the deep problem; the surface tells often resolve themselves.

---

## 2. The core problem (regression to the mean)

LLMs (and artificial neural networks in general) use statistical algorithms to guess what comes next based on a large corpus of training material. They tend to **regress to the mean**: the result tends toward the most statistically likely outcome that applies to the widest variety of cases.

**Consequence:** specific, unusual, nuanced facts get replaced with generic, positive, statistically common descriptions. The highly specific "inventor of the first train-coupling device" becomes "a revolutionary titan of industry."

> It is like shouting louder and louder that a portrait shows a uniquely important person, while the portrait itself is fading from a sharp photograph into a blurry, generic sketch. — Wikipedia:Signs of AI writing

The subject becomes simultaneously **less specific** and **more exaggerated**. This smoothing over of specific facts into generic statements is what makes AI-generated content detectable — and fixable.

---

## 3. Content tells — expanded with real examples

### 3a. Undue emphasis on significance, legacy & broader trends (WP:AILEGACY)

| Words to watch |
|---|
| *stands as / serves as, is a testament / reminder, a vital/significant/crucial/pivotal/key role/moment, underscores/highlights its importance/significance, sets the stage for, marking/shaping the, represents a shift, key turning point, indelible mark, deeply rooted, evolving landscape, focal point, contributed to the broader, symbolizing its ongoing/enduring/lasting* |

LLMs puff up importance by adding statements about how arbitrary aspects of a topic represent or contribute to a broader trend. There is a distinct, easily identifiable repertoire for how they write these statements.

**Real example — statistics institute:**
> "The Statistical Institute of Catalonia was officially established in 1989, **marking a pivotal moment** in the evolution of regional statistics in Spain. [...] The founding of Idescat **represented a significant shift** toward regional statistical independence, enabling Catalonia to develop a statistical system tailored to its unique socio-economic context. This initiative was **part of a broader movement** across Spain to decentralize administrative functions and enhance regional governance."

**Real example — town etymology:**
> "During the Spanish colonial period, the name Bakunutan was hispanized to Bacnotan, a modification reflected in official documents preserved in the National Archives in Manila. This etymology **highlights the enduring legacy** of the community's resistance and the transformative power of unity in shaping its identity."

**Real example — obscure aircraft draft:**
> "Though it saw only limited application, it **contributes to the broader history** of early aviation engineering and **reflects** the influence of French rotary designs on German manufacturers."

**Real example — biology / species articles:**
When asked to discuss an animal or plant species, LLMs over-emphasize connections to the broader ecosystem, even when tenuous. They also belabor conservation status and research efforts even when none exist:

> "Currently, there is no specific conservation assessment for *Lethrinops lethrinus* by the IUCN. However, the **general health of the Lake Malawi ecosystem is crucial** for the survival of this and other endemic species. Factors such as overfishing, pollution, and habitat destruction **could potentially impact** their populations."

> "It **plays a role in the ecosystem** and **contributes to Hawaii's rich cultural heritage.** [...] Preserving this endemic species is **vital not only for ecological diversity but also for sustaining** the cultural traditions connected to Hawaii's native flora."

### 3b. Canned emphasis on notability & media coverage (WP:OVERATTRIBUTION)

| Words to watch |
|---|
| *independent coverage, local/regional/national/[country] media outlets, music/business/tech outlets, trade publications, profiled in, written by a leading expert, active social media presence* |

LLMs act as if the best way to prove notability is to hit readers over the head with claims of it — listing sources and specifying what *type* of sources they are. They often inaccurately attribute their own superficial analyses to the source. This is more common in text from newer AI tools (2025+).

**Real example:**
> "She spoke about AI on CNN, and was featured in Vogue, Wired, Toronto Star, and **other media.** [...] Her insights have **also been featured in** *Wired*, *Refinery29*, and **other prominent media outlets.**"

> "The subject has been profiled in **multiple high-quality, independent, and widely-read outlets,** including The Australian, SBS News, 7News, and other regional and national publications. These sources provide **significant, substantial, secondary coverage** that **demonstrates the subject's notability.**"

### 3c. Superficial analyses (the "-ing" tell) (WP:SUPERFICIAL)

| Words to watch |
|---|
| *highlighting/underscoring/emphasizing..., ensuring..., reflecting/symbolizing..., contributing to..., cultivating/fostering..., providing valuable insights, aligns with, resonates with* |

LLMs attach present-participle ("-ing") phrases at the end of factual sentences to inject significance that sources don't actually state. The sentence could stop before the "-ing" clause and lose nothing.

**Real example — population data:**
> "As of the April 2008 census, the population of Douera stood at approximately 56,998 inhabitants, **creating a lively community within its borders... enhancing its significance as a dynamic hub** of activity and culture."

**Real example — train station:**
> "The station has seen several upgrades over the years, including the introduction of new ticketing systems and enhanced accessibility features, **reflecting its continued relevance** in the regional and national transportation landscape."

### 3d. Promotional & travel-guide language (WP:AIPUFFERY)

| Words to watch |
|---|
| *boasts a, nestled in the heart of, vibrant, rich, profound, enhancing, showcasing, exemplifies, natural beauty, groundbreaking, renowned, diverse array, commitment to, vibrant community, seamless(ly)* |

Even neutral prompts produce advertisement-like language. This is the AI equivalent of real-estate listing copy.

**Real example — Ethiopian town:**
> "**Nestled within the breathtaking region** of Gonder in Ethiopia, Alamata Raya Kobo **stands as a vibrant town with a rich cultural heritage...**"

**Real example — tourism board:**
> "TTDC **acts as the gateway** to Tamil Nadu's diverse attractions, **seamlessly connecting** the beginning and end of every traveller's journey."

### 3e. Vague attributions & overgeneralization (WP:AIWEASEL)

| Words to watch |
|---|
| *Industry reports, Observers have cited, Experts argue, Some critics argue, several sources/publications (when only one is cited), such as (before non-exhaustive lists)* |

LLMs attribute opinions to vague authorities or present one source as widespread consensus.

**Real example:**
> "Due to its unique characteristics, the Haolai River is **of interest to researchers and conservationists.** Efforts are ongoing..."

> "The phenomenon has **generated debate about** authenticity, consent, and the psychological effects..."

### 3f. "Challenges & Future Prospects" sections

Often at the end of rigid outlines. The structure: "Despite [positive], [subject] faces several challenges..." followed by vague optimism.

**Real example:**
> "Despite their promising applications, pyroelectric materials **face several challenges...** Despite these challenges, the versatility of pyroelectric materials positions them as critical components for sustainable energy solutions..."

> "Despite its industrial and residential prosperity, Korattur **faces challenges typical of urban areas,** including... With its strategic location and ongoing initiatives, Korattur **continues to thrive...**"

### 3g. Leads treating article/list titles as proper nouns

LLMs introduce list articles or concept pages as if the title itself is a standalone real-world entity.

> "**'Catchment area (health)'** refers to the geographic area from which a health facility, such as a hospital or clinic, draws its patients."

> "**The 'List of songs about Mexico'** is a curated compilation of musical works that reference Mexico across various genres and time periods."

Fix: introduce the subject directly without the title-as-entity framing. "A catchment area (health) is..." or just present the list.

---

## 4. Language & grammar tells (the AI idiolect)

### 4a. High density of "AI vocabulary" (era-specific)

See Section 5 below for the full era-by-era breakdown. The key insight: a *cluster* of words from one era in the same piece is a much stronger signal than any single word.

### 4b. Avoidance of plain "is/has"

LLMs systematically prefer compound verbs over plain copulas: *serves as, stands as, represents, boasts, offers, features.* These add no information and inflate syllable count.

**Real example:**
> "The gallery **serves as** LAAA's exhibition space." → "The gallery **is** LAAA's exhibition space."

### 4c. Negative parallelism / false contrast

The "not only X, but also Y" / "It's not just X — it's Y" structure is heavily overused by LLMs, often adding nothing but rhetorical tension. Fix: state Y plainly.

### 4d. Rule of three

Adjectives and examples reflexively grouped in threes to sound comprehensive: *"safe, reliable, and efficient."* Human writing uses uneven grouping. Fix: cut to the one or two that are true.

### 4e. Hedging qualifiers as filler

"tends to," "can potentially," "in many cases" — used reflexively rather than because the hedge is needed. Fix: state the claim plainly.

### 4f. Present-participle padding

The "-ing" clauses (see 3c above). Fix: cut or convert to an independent sentence if the information is substantive.

### 4g. Historical tells (mostly pre-2024)

See Section 10 below.

---

## 5. Vocabulary by "chatbot era"

Overused words cluster and change over time as models are updated. A cluster of words from one era in the same piece is a much stronger signal than any single word.

### 2023 – mid-2024 (GPT-4 era)

Additionally (sentence-opening), boasts, bolstered, crucial, delve, emphasizing, enduring, garner, intricate / intricacies, interplay, key (filler adjective), landscape (abstract noun), meticulous / meticulously, pivotal, underscore, tapestry, testament, valuable, vibrant.

### Mid-2024 – mid-2025 (GPT-4o era)

align with, bolstered, crucial, emphasizing, enhance, enduring, fostering, highlighting, pivotal, showcasing, underscore, vibrant.

### Mid-2025 onward (GPT-5 era)

emphasizing, enhance, highlighting, showcasing — plus a shift toward the "notability/attribution" cluster (Section 3b) rather than pure adjective puffery.

### Grok-specific

Overuses pseudo-"scientific" vocabulary — causal, empirical, correlate — and continues overusing "underscore" longer than other models. Also does a reversed negative-parallelism: "X, prioritizing Y rather than Z" instead of "not Z, but Y."

### "Concrete" cluster (talk-page replies)

The word "concrete" (as in "concrete evidence," "concrete examples") shows up disproportionately in AI-written talk-page and comment replies.

### Notability / attribution cluster (2025+, bios and company articles)

independent coverage, [local/regional/national] media outlets, trade publications, profiled in, written by a leading expert, maintains an active social media presence.

### Important caveat on vocabulary

This is about literal word overuse, not about synonyms. "Underscore" being overused doesn't mean "emphasize" is also suspicious. Context matters, and some of these words have ordinary literal meanings (e.g. "underscore" as a literal underline, "landscape" as actual terrain). Don't flag single words — flag clusters.

---

## 6. Punctuation and typography

**Em dashes:** LLMs use them far more than typical human prose of the same genre, almost always *with spaces around them* (" — "), often to punch up a rhetorical turn ("not X — it's Y"). A human em dash is usually used more sparingly and often without surrounding spaces, depending on style guide. Weak signal alone; strongest in combination with other tells.

**Curly quotes/apostrophes ("smart quotes"):** ChatGPT and DeepSeek default to curly quotes/apostrophes; inconsistent mixing of curly and straight in the same piece is a stronger signal than curly quotes alone (which many legitimate tools — Word, iOS, CMOS-style copyediting — also produce). Gemini and Claude typically do *not* default to curly quotes.

**Placeholder / broken reference artifacts** (only relevant for copy-pasted chatbot output): `citeturn0search0`, `:contentReference[oaicite:0]{index=0}`, `oai_citation`, `[attached_file:1]`, `【85†L261-269】`, `[cite: 17]`. These are citation-rendering artifacts from copying chatbot UI output directly — always strip them, they carry zero information.

---

## 7. Formatting / markup tells

- **Inline-header vertical lists:** `- **Label:** description` repeated down a page. Heavy Markdown users produce this naturally too (devs, Reddit/Discord users), so treat as a signal only when the *content* also reads as generic.

- **Title Case headings** for every heading, including small connector words — weak alone, stronger in combination.

- **Boldface used mechanically** for "key takeaways" on every instance of a term.

- **Markdown bleeding into non-Markdown targets** — asterisks, `##` headers, or fenced code blocks in wikitext/plain text.

- **Small unnecessary tables** for content that reads more naturally as prose — "Key Statistics of X (2024–2025)" two-column tables for a handful of facts.

- **Emoji as heading/bullet decoration** (👋 🧑‍💻 🌏 📬 🙏) — common in AI-generated user pages, virtually never in encyclopedic prose.

---

## 8. Wikitext-specific tells

Only relevant for Wikipedia / wikitext targets:

- **Skipping heading levels** (jumping straight to `===` / h3 without an `==` / h2 above it) — very unlikely for a human doing manual formatting; fairly strong signal.
- **Lead sections treating article titles as proper nouns** — see Section 3g above.
- **Broken wiki-internal links** — link targets that don't exist or are malformed.
- **Citation template misuse** — using cite templates incorrectly or adding citation metadata that references non-existent sources.
- **Stray visual-editor artifacts** — odd `&nbsp;`, double line breaks, over-escaped characters.

---

## 9. Model-specific fingerprints

Different models have identifiably different "idiolects":

**ChatGPT / Grok:** tend to zoom out to broader context more than Gemini/Claude; more likely to produce the "generated debate about X, Y, Z" pattern and heavier use of rule-of-three.

**Gemini / Claude:** tend to be more concise than ChatGPT/Grok by default; Claude in particular rarely defaults to curly quotes.

**Grok specifically:** favors pseudo-scientific vocabulary (causal, empirical, correlate) and a reversed negative-parallelism structure ("X, prioritizing Y rather than Z" instead of "not Z, but Y").

**DeepSeek:** tends to produce longer, more repetitive output with distinctive hedging patterns and culturally-specific idioms.

---

## 10. Historical tells (mostly pre-2024, useful for dating old text)

These were common in earlier chatbot output and are now rare in current models, but useful if you're assessing whether an *old* piece of text was AI-generated:

- **Didactic disclaimers:** "it's important to note that...," "it's crucial to remember..."
- **Section summaries / tidy conclusions:** "In summary," "In conclusion," or an explicit "Conclusion" section.
- **Explicit AI self-reference / refusals:** "As an AI language model, I can't directly contribute to Wikipedia, but I can help you draft..."
- **Abrupt cutoffs mid-sentence** from old token-limit truncation.
- **Knowledge-cutoff disclaimers:** "As of my last knowledge update in [date]..."
- **Raw markdown headers** (`##`, `**bold**`) in rendered plaintext.

---

## 11. Ineffective indicators — do not rely on these alone

These are commonly mistaken for AI tells but are weak or actively misleading on their own:

- Perfect grammar and spelling — plenty of skilled human writers produce clean copy.
- Formal, academic, or "fancy" vocabulary in general — the AI-overused words are a specific narrow list, not "any long word."
- A mix of casual and formal register — very common in genuine human writing (technical fields, neurodivergent writers, multi-author documents).
- Letter-like structure (salutation, sign-off) on its own — predates LLMs by decades.
- Occasional transition words (Additionally, Notably) — only a *reflexive, sentence-opening* pattern across many sentences is meaningful.
- Unsourced or uncited content — most under-cited writing predates any LLM.
- Odd but explainable formatting glitches (stray HTML tags, misplaced wiki-markup) — usually editor-tool bugs, not AI.
- Correct, working markup, even for complex templates — normal for anyone using a visual editor.

---

## 12. Anti-patterns for editors

Common mistakes people make when trying to "fix" AI-sounding text:

**1. Word-swap instead of content-fix.** Replacing "delve into" with "explore" doesn't help if the sentence around it is still a generic significance-statement. Fix the substance first; the vocabulary quirks usually resolve themselves when the underlying content is specific.

**2. Treating symptoms as the problem.** An em dash, a bold list, or a use of "underscores" is not a policy violation by itself. These are clues pointing to deeper issues (synthesis, OR, puffery, lack of sourcing). Fix the deep problem and the surface tells often disappear naturally. As Wikipedia says: *"Do not merely treat these signs as the problems to be fixed; that could just make detection harder."*

**3. Overcorrection.** Stripping out every transition word, every big word, and every em dash in a panic produces text that's worse, not better. Human writing includes all of these things in moderation. The goal is *better content*, not *sterile text*.

**4. Over-reliance on a single tell.** One em dash or one use of "underscores" is a coincidence. A cluster of 5+ different types of tells in the same piece is a real signal. Don't act on singles.

**5. Using AI detection scores as evidence.** AI detection tools (GPTZero, etc.) have non-trivial error rates. A high score is not proof. They can be fooled by simple paraphrasing or markup changes. Do not use them as the basis for action.

**6. Fixing style without fixing substance.** If the core issues are puffery and lack of sourcing, fixing the formatting and vocabulary is cosmetic. Always address the underlying content problem first.
