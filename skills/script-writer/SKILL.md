---
name: script-writer
description: Use for anything spoken aloud (video scripts, YouTube or Reels, lectures with speaker notes, workshops and facilitator guides, talks, presentations). Writes for the ear with timing, cues, and formats.
---

# Script Writer

Write scripts for things the user will say out loud: videos, lectures, workshops, talks, and presentations. He provides the topic, goal, and his own material. Claude writes the script, he rehearses it and delivers it.

Three modes share one set of spoken-word rules: **Video**, **Lecture**, **Workshop**. A talk or presentation uses Lecture mode without the learning-outcome parts, unless it is teaching something.

## Step 0: Load the core rules

If the writing-core skill is available, load it first. It holds the shared rules (his inputs first, avoiding generic AI defaults, never inventing, markers, voice, self-check). If it is not available, follow this summary:

- Name specifics: numbers, tools, examples, sources.
- Include real failures, trade-offs, and open questions from his material.
- Plain literal language. No decoration, no em dashes, no filler words like delve, landscape, pivotal, crucial.
- Never invent data, stories, or experiences. Use markers: `[YOUR INPUT: ...]`, `[VERIFY: ...]`, `[FIGURE: ...]`, `[CITE: ...]`.
- Take a position. End on a concrete point or next step, not a moral.

## How spoken text changes the core rules

Listeners cannot re-read, so some core rules change for scripts. These changes come from general practice in speaking and teaching, not from the StoryScope paper behind the core rules.

| Core rule | For spoken scripts |
|---|---|
| State each point once | Preview, explain, then recap the key point at the end of a segment. Recap facts and steps, never morals or lessons. |
| Plain literal language | Still plain. Concrete examples and visuals help a lot. Ornamental metaphors still do not. |
| Name specifics | Still name them. Round numbers when spoken ("about 40 percent") and show the exact value on screen or slide. |
| Varied sentence length | Mostly short sentences. One idea per sentence. |

## Step 1: Intake

Ask only for what is missing, in one message, at most 3 questions:

1. **Mode, platform, and length.** Video (YouTube long-form, Reels, TikTok, or Shorts), lecture, workshop, or talk; in person or online; target duration.
2. **Audience.** Who they are, what they already know, how many people.
3. **His material.** Notes, slides, code, data, and especially his own examples and experiences. These are what make the script his and not the generic version every AI produces for the same topic. Ask for at least one real example or story. Never invent one.

Also note the goal: what the audience should know, do, or feel after.

## Spoken-word rules (all modes)

- **Write for the ear.** One idea per sentence. Most sentences under 20 words. Active voice. Contractions are fine.
- **Same term every time.** Listeners hear a new word as a new thing, so do not rotate synonyms.
- **Signpost.** Say the structure out loud: "There are two reasons. First... Second..." Mark transitions: "Now the important part."
- **No reading-only devices.** No parentheses, footnotes, "the former and the latter", or "as mentioned above".
- **Numbers.** At most one or two per sentence. Round when spoken unless precision matters.
- **Abbreviations.** Say the full term on first use. Add pronunciation for unusual names or terms in brackets for him only, for example [say: "kai-square"].
- **Read-aloud test.** If a sentence needs a breath in the middle, split it.
- **Visual and verbal split.** Slides and on-screen text hold keywords, visuals, and code. The script holds the explanation. Do not put the narration on the slide: people learn better from visuals plus narration than from visuals, narration, and the same text on screen (Mayer's redundancy principle).
- **Timing.** Plan about 130 to 150 spoken words per minute for lectures, workshops, and talks, and about 150 to 160 for video narration. Give a word count and estimated duration for each segment and the total. Tell him to time one read-aloud, since his real pace decides.

## Mode A: Video

**Structure**
1. **Hook** (first 5 to 10 seconds): the problem, the result, or the question. No "Hi guys, welcome back" and no long intro before the value.
2. **Promise:** what the viewer gets by the end, in one sentence.
3. **Beats:** one idea per beat, each with a visual change (screen recording, B-roll, zoom, on-screen text, cut).
4. **Payoff:** deliver the promise. Show the result.
5. **Close:** one next step or call to action, only if he wants one.

**Short-form (under about 90 seconds):** one idea only. The hook is the first line. Cut every setup sentence that does not pay off.

**Ask** whether it is talking head, voiceover with screen recording, or mixed, because that changes the visual cues.

**Format**

```text
SCENE 1  |  0:00 to 0:08  |  ~20 words
VISUAL: what is on screen
ON-SCREEN TEXT: short text overlay, if any
NARRATION: what he says
```

Offer a narration-only teleprompter version on request.

## Mode B: Lecture (and talks)

**Plan**
- **Learning outcomes:** 2 to 4, with measurable verbs (explain, compute, compare, implement, debug). Not "understand".
- **Opening:** a problem, question, or surprising result tied to the outcomes. Agenda after the hook, not before.
- **Segments:** split the lecture by content, with a short interaction between segments: a question, a poll, a predict-the-output task, or a quick pair discussion. Active learning improves results over pure lecturing (Freeman et al., 2014, PNAS meta-analysis). The popular "10-minute attention span" rule has weak evidence, so break by content, not by a fixed timer.
- **Inside each segment:** worked example before practice, and one common misconception named and corrected.
- **Close:** recap the key points as facts or steps, one exit question, and what comes next.

**Format**

```text
SEGMENT 2  |  12:00 to 22:00  |  Outcome 1  |  ~1,300 words
SLIDE TITLE: ...
SLIDE CONTENT: keywords, visual, or code (max about 6 short lines)
SPEAKER NOTES: the script he says
CHECK: question to the audience / expected answer
```

If he wants the slides built, use the Slides artifact type or the pptx skill. This skill writes the content and speaker notes.

## Mode C: Workshop

**Plan backward:** outcomes first, then the final task participants complete, then the activities that build up to it. Participants should spend more time doing than listening: short demos (about 5 to 10 minutes) followed by practice.

**Facilitator guide sections**
1. **Overview:** title, audience, prerequisites, outcomes, duration, group size.
2. **Setup and materials:** links, datasets, tools, room or online setup. For coding workshops: a tested starter repo or notebook, an environment check as the first activity, and a solutions file.
3. **Agenda:** time, block name, activity, and expected output for each block.
4. **Each block:** purpose, what the facilitator says (script), participant instructions as numbered steps, expected output, common errors and fixes, and timing.
5. **Debrief:** 3 to 5 questions that connect the activity back to the outcomes.
6. **Contingency:** keep a buffer of about 10 to 15% of total time. Say what to cut if running behind, and give an extension task for fast participants.
7. **Follow-up:** resources and a feedback question or form.

Offer a separate **participant handout** with only the steps and links.

**Code in workshops:** never include code that has not been run. Run it with the code tools when available. Otherwise mark it `[VERIFY: run this before the workshop]`.

## Output format

- Script blocks in fenced `text` code blocks so the copy button gives clean text. No markdown inside.
- Each segment or scene shows its word count and estimated duration. Show the total at the end.
- **Rehearsal notes** (2 to 4 bullets): lines worth practicing, where to slow down, where to pause for questions, and which `[YOUR INPUT]` stories to prepare.
- Long guides or full lecture scripts: offer a .docx built with the docx skill.

## Never do these

- Invent his stories, experiences, or results.
- Invent statistics to make a hook sound stronger.
- Put the full narration on slides.
- Claim a duration without a word-count basis.
- Ship workshop code that has not been run.
