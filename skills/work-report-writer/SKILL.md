---
name: work-report-writer
description: Use for reports at work from his data (analysis reports, status updates, proposals, meeting summaries, memos) for a manager, client, or team. Writes full drafts, executive summary first, numbers checked.
---

# Work Report Writer

Write workplace reports from the user's data. He provides the data and context, Claude writes the full draft, and he checks it and sends it. Unlike university work, the reader cares about accuracy, clarity, and the decision, not about who typed the sentences.

## Step 0: Load the core rules

If the writing-core skill is available, load it first. It holds the full shared rules (his inputs first, avoiding generic AI defaults, never inventing, markers, voice, self-check). If it is not available, follow this summary:

- State each point once, early. No closing sentences that restate.
- Name specifics: numbers, dates, tools, sources, people's roles.
- Include real limits, risks, and trade-offs from his material.
- Plain literal language. No decoration, no em dashes, no filler words like delve, landscape, pivotal, crucial.
- Never invent data, results, names, or dates. Use markers: `[YOUR INPUT: ...]`, `[VERIFY: ...]`, `[FIGURE: ...]`, `[CITE: ...]`.
- Take a position. End on the recommendation or next step, not a moral.

## Step 1: Intake

Ask only for what is missing, in one message, at most 3 questions:

1. **Reader and purpose.** Who reads it (manager, client, team, board) and what they need to do after reading (approve, decide, stay informed, fix something).
2. **Data and context.** Files, numbers, notes, previous reports, the time period covered, and any company template.
3. **His position.** What he thinks the recommendation should be, if he has one.

Also note length limits and the deadline if given.

## Step 2: Handle the data carefully

Numbers are where a work report can do real damage, so this step comes before any writing.

- **Compute, do not estimate.** When he gives files (CSV, XLSX, exports), calculate totals, rates, and changes with code, not by reading the table by eye. Show the calculation in the reply or the appendix.
- **State the source** of every number: which file, sheet, or system, and the date range.
- **Flag problems, do not smooth them over:** missing values, outliers, a sudden jump, mismatched totals, small sample sizes. Put them in the report as limits, or ask him first.
- **Units and comparisons:** say what each number is compared to (last month, target, same period last year). Distinguish percent change from percentage points.
- **Personal data:** if the data contains names or details of students, customers, or employees, remind him once to anonymize before sharing, unless he already did. Do not repeat personal details in the report unless the report needs them. Also remind him once to check his workplace's AI policy if he has not mentioned it.

## Step 3: Structure (answer first)

Readers at work skim. Put the answer first, then the support (the pyramid principle). Default structure for an analysis report:

1. **Title** that says the finding, not only the topic. For example "Lesson completion fell 12% after the March update", not "Completion report".
2. **Executive summary** (3 to 5 sentences): the situation, the key finding with its number, the recommendation, and the decision or action needed from the reader.
3. **Findings.** Each finding starts with a headline sentence that contains the number, then the evidence, then why it matters. Most important finding first.
4. **Recommendation.** The options considered, the trade-off of each, and the recommended option with the reason. If he has not decided, present the options, mark the one the data supports, and add `[YOUR INPUT: confirm your recommendation]`. The decision is his.
5. **Risks and limits.** Data gaps, assumptions, what could make the recommendation wrong.
6. **Next steps.** Each with an action, an owner, and a date. Use `[YOUR INPUT: owner]` and `[YOUR INPUT: date]` where unknown.
7. **Appendix.** Method, data sources, calculations, full tables.

## Variants

Use the variant that fits the request. Keep the answer-first rule in all of them.

- **Status or progress update:** done since the last update, in progress, blocked (with what would unblock it), next, and asks for the reader. Lead with overall status in one line (on track, at risk, or off track) and the reason.
- **Proposal:** the problem with evidence, the proposed solution, cost and time, alternatives considered, risks, and the specific ask (budget, approval, people).
- **Meeting summary:** decisions made, action items (action, owner, date), open questions, and a short context line. Skip the play-by-play of who said what.
- **One-page memo:** the bottom line in the first sentence, three supporting points with numbers, and the ask.
- **Email report:** subject line with the key finding, the summary in the first two lines, details below, and attachments named.

If his company has a template, follow it over these defaults.

## Charts and tables

- Suggest one chart per key finding at most, with `[FIGURE: ...]` saying the chart type and what it shows. For example "line chart of weekly completion rate, Jan to Jun, with the March update marked".
- If he asks you to build charts, load the dataviz skill first.
- Use a table when the reader needs exact values. Use a chart when the reader needs the trend or comparison.

## Output format

- **Paste blocks:** fenced `text` code blocks, one per section, labeled above the fence. No markdown inside. Note formatting to apply after each block (heading levels, bold, bullets).
- **Long reports:** if the report runs over about 1,000 words, or he asks for a file, build a .docx with the docx skill. Build an .xlsx with the xlsx skill if he wants the tables as a spreadsheet.
- **Check before sending:** end every report with a short list for him: each number used, where it came from (file and row, column, or calculation), and any `[VERIFY]` items. This lets him check the numbers in two minutes before sending.
- No edit guide and no teaching notes by default. He can ask for them.

## Never do these

- Invent or round numbers in a way that changes meaning.
- Hide bad results or data problems.
- Make the decision for him without saying it is a draft recommendation.
- Include personal data the report does not need.
- Pad with background the reader already knows.
