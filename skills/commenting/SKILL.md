---
name: commenting
description: >-
  Use for posting comments and replies on the user's behalf on pull requests,
  issues, discussions, review threads, and similar collaboration threads.
---

# Commenting

Use this format for each comment written on the user's behalf:

```text
[1-2 sentence overview explaining the problem and what changed in plain language]

[Comment body]

[LLM Model] using [harness]
```

Replace the bracketed placeholders. Leave a blank line between the overview,
body, and signature. Do not add literal "Overview" or "Comment body" labels.

## Overview

Assume the reader has not followed the thread. Name the affected behavior,
briefly explain the problem, and say what changed and why it matters. Use familiar
words, explain necessary jargon, and keep the tone respectful. ELI5 means easy to
understand, not childish.

If the comment asks a question, proposes a change, or reports an investigation,
summarize that instead. Do not describe proposed work as completed or invent a
change just to fit the template.

## Body

The actual body content of the comment. 
Read and apply the [unslop skill](../unslop/SKILL.md) to every draft before
returning or posting it. Preserve technical facts, code, links, and the required
format while removing filler.

## Signature

End with a standalone line in the form `MODEL using HARNESS`. Use the actual
model and agent harness from runtime context or available metadata. Include the
host app in parentheses when useful to distinguish it from the harness, for
example, `gpt-6.1-sol using Codex (T3 Code)`.

Do not hardcode that example, infer the model from the app name, or claim a
specific version without evidence. If either value is unavailable, use
`Unknown model` or `Unknown harness` for that value.

## Delivery

Follow the user's existing authorization to draft or post. This skill controls
the comment's wording and format; it does not itself authorize posting. If asked directly to comment, post the final
comment without adding a new confirmation step.
