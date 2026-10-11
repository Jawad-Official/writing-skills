---
name: writing-core
description: Shared rules for all non-fiction writing. Load alongside academic-report-writer, work-report-writer or script-writer, and use alone for emails, cover letters, applications, posts, bios. Not for fiction.
---

# Writing Core

The shared rules behind the user's writing skills. Two ways this skill is used:

1. **Alongside a family skill.** academic-report-writer (university work), work-report-writer (reports at work), and script-writer (videos, lectures, workshops) each tell Claude to load this skill first. The family skill then adds its own structure, output format, and trigger.
2. **Alone,** for any other non-fiction writing: emails, cover letters, applications, motivation letters, LinkedIn or social posts, bios, abstracts, short articles, README intros.

Not for fiction, stories, poems, or song lyrics. If the request is one of those, do not apply these rules.

## Why these rules exist

The rules come from StoryScope (Russell, Rajendhran, Pham, Iyyer and Wieting, COLM 2026, arXiv:2604.03136). The paper compared 10,272 human short stories with 51,336 stories from five LLMs (Claude, GPT, Gemini, DeepSeek, Kimi) written from the same prompts. With style features removed, narrative choices alone separated human from AI writing at 93.2% macro-F1.

Three lessons drive everything below:

1. **AI defaults converge.** All five models landed in one tight region. Human work was more spread out and rarer (mean rarity percentile 0.71 vs 0.49). The same prompt gives everyone roughly the same generic text. Originality comes from inputs only the user has: his data, decisions, experience, sources, context, and opinion.
2. **Surface edits do not change structure.** Removing cliches and purple prose only moved detection from 95.5% to 93.9%. Swapping synonyms does not make text his. Changing decisions does: which evidence, what order, what conclusion, what failed.
3. **The AI defaults are also weak writing.** Fixing them improves the text no matter who drafted it.

Caveat: the paper studied fiction of about 5,000 words. Applying it to non-fiction is an analogy, not a measured result. Never present its numbers as facts about other kinds of writing.

## Rule 1: His inputs first

Before drafting anything longer than a few sentences, check what he gave you: data, results, notes, experience, opinions, sources, constraints, audience. If something essential is missing, ask once, at most 3 questions in one message. If he wants a draft anyway, draft it and put markers where his material belongs. Never fill gaps with invented content.

For anything over about 150 words, sketch a skeleton first (internally for short pieces, shown to him for long ones): main point, evidence, his decisions, what did not work or the limits, one real tension or open question. StoryScope built structured templates before comparing stories because templates force reasoning about content instead of wording. The same works for writing.

## Rule 2: Avoid the AI defaults

| AI default (paper evidence) | What it looks like in non-fiction | Do instead |
|---|---|---|
| Over-explains the theme (narrator states it 77% vs 52%) | Every paragraph ends with "This highlights the importance of X"; conclusions lecture | State the point once, early. Let evidence carry it. Cut restating closers. |
| Vague allusions (72% vs 50%); humans name works nearly twice as often (47% vs 24%) | "Studies show", "experts agree", "various tools" | Name the source, person, tool and version, dataset, number, place, date. |
| Tidy single track (no subplots 79% vs 57%); humans more ambivalent (59% vs 38%) | Everything worked, one explanation, every question resolved | Include real failures, trade-offs, alternatives, limits, one open question. Only real ones from his material. |
| Emotion through the body (81% vs 38%); humans name feelings (29% vs 8%) | Metaphor and decoration: "navigating the landscape", "a knot in my stomach" | Plain literal statements. Name feelings directly and tie them to a specific moment. |
| Rarely revisits earlier parts (recontextualization 3.28 vs 2.95 for humans) | Linear list of points that never connect back | Link a later point back to an earlier assumption or decision and say what changed. |
| Claude's own fingerprint: restraint, epilogues, reverent toward tradition (62% vs 39 to 56%) | Agrees with every source, hedged neutral stance, "As AI continues to evolve..." endings | Take a defensible position. Critique something on specific grounds. End on the finding or next step. |

## Rule 3: Surface cleanup

Cheap to fix and matters less than Rule 2, but it reads as filler:

- No em dashes. Use a period, comma, colon, or "and".
- Avoid: delve, tapestry, landscape (figurative), realm, pivotal, underscore, multifaceted, seamless, game-changer, robust (unless technical), "in today's fast-paced world", "it is important to note", "plays a crucial role", "serves as a testament", "not only X but also Y" used repeatedly.
- Do not group everything in threes. Vary sentence length.
- No closing paragraph that repeats every earlier point.

## Rule 4: Never invent

Never invent data, results, quotes, experiences, feelings, names, references, page numbers, DOIs, prices, or dates. Use these markers instead. All family skills use the same markers, in capitals and square brackets so they cannot be missed before he sends or submits anything:

- `[YOUR INPUT: ...]` his data, decision, opinion, example, or experience
- `[CITE: ...]` a claim that needs a source; say what kind
- `[VERIFY: ...]` a detail you are unsure of (date, version, number, name, reference field)
- `[FIGURE: ...]` a suggested figure, chart, or table and what it should show

When tools allow (web search, code on his files), verify facts and compute numbers instead of estimating.

## Rule 5: Voice

Match his voice. If he shares past writing, mirror its sentence length and vocabulary. Default: clear, plain English, common words over rare ones, short to medium sentences, active voice. Text he sends should sound like him and be something he can explain and defend. Reply in the language he writes in. Write the deliverable in the language it will be used in.

## Rule 6: Self-check before sending

1. Is each point stated once?
2. Does every factual claim have a named source, his data, or a marker?
3. Is there at least one real limit, failure, or trade-off where the format allows?
4. Anything invented? Replace it with a marker.
5. Any phrase from the avoid list, decoration, or em dash?
6. Does the ending give a specific point or next step, not a moral or epilogue?
7. Where are his decisions and inputs? If none, add markers or ask.

## Output basics

He usually pastes into Word, email, or another app, so markdown symbols would paste literally.

- Put deliverable text in fenced `text` code blocks so the copy button gives clean text. Label each block above the fence.
- No markdown inside blocks. After a block, note any formatting to apply (headings, bold, italics, bullets).
- Family skills may override this with their own format.

## Quick notes for standalone use

- **Email:** subject line that states the topic or ask. The ask or main point in the first two lines. One topic per email. Clear next step with a date if relevant.
- **Cover letter or application:** match evidence to the role's stated requirements, one specific example per requirement, real numbers from his work. No generic adjectives ("passionate", "hard-working") without proof. Ask for the job post and his CV if missing.
- **Motivation or personal statement:** concrete moments from his experience, what he did and learned, why this program specifically. Never invent experiences.
- **LinkedIn or social post:** first line states the point or result. One idea per post. Specific details over claims. No hashtag walls.
- **Bio:** third or first person as asked, current role first, two or three specific achievements, no superlatives.
