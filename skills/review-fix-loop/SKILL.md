---
name: review-fix-loop
description: Review changes, audit issues, plan minimal fixes, implement them, and repeat until a review finds no remaining issues. Use when asked to review and fix changes or fix any issues in the code.
---

# Review Fix Loop
Review → audit → plan → fix → verify → repeat. Finish only after a complete review of the accumulated changes finds no remaining in-scope issues. A blocked review is not a clean review.

## Establish scope and intent
- Read the original request, relevant repository instructions, and the changes under review. Identify the intended behavior, acceptance criteria, and comparison baseline (such as a base commit or the starting worktree state).
- Keep that baseline and the original intent stable throughout the loop. Review the original changes together with all fixes from this loop, not just the latest patch.
- If the target changes, baseline, or intended behavior cannot be determined confidently, ask the user before making dependent changes.
- Preserve unrelated work. Scope follows the original task, not merely the list of files already edited: a necessary fix in a related caller or test can be in scope, while unrelated cleanup in an edited file is not.

## Guardrails
- Fix only issues introduced, exposed, or worsened by the original changes, and regressions caused by this loop. Do not use an existing unrelated defect as a reason to expand the task.
- Record unrelated findings separately for the user to address later. Do not fix them or create external issues unless asked. They do not prevent the loop from completing.
- Do not make directional decisions or change the original intent. Ask before choosing behavior, requirements, public contracts, product direction, or consequential tradeoffs that the original request does not settle.
- If uncertain whether a fix is in scope, preserves intent, or needs a question, ask. Explain the concrete uncertainty and the decision needed. Pause dependent work until answered; continue independent, clearly authorized work where useful. I will never be annoyed by you asking too many questions. Likewise, I will be VERY annoyed if you make decisions that I should have and I have to go clean it up.
- Use judgment for routine implementation choices that clearly preserve scope and intent. Do not require approval for every fix or plan.
- Keep plans in the conversation or task tracking, not project documentation. Update documentation only to reflect implemented behavior.

## Repeat this loop
### 1. Review the full changes
Inspect the accumulated diff and enough surrounding code, callers, configuration, and tests to understand its effects. Look broadly for issues wherever relevant: correctness, edge cases, security, privacy, performance, reliability, concurrency, data integrity, compatibility, usability, accessibility, error handling, maintainability, testing, and documentation.

Do not invent findings to fill categories, or treat personal style preferences and speculative enhancements as defects. For each suspected issue, identify its location, triggering conditions, likely impact, and relationship to the original changes.

### 2. Audit suspected issues
Trace each suspected issue to its cause and check the evidence before editing. Use targeted inspection, reproductions, tests, or measurements where appropriate. Distinguish confirmed issues from false positives, unresolved questions, and unrelated findings.

Do not silently discard a plausible issue because it is difficult to reproduce. Resolve it with evidence, ask when intent is unclear, or report the verification blocker.

### 3. Plan the smallest reasonable fixes
For each confirmed in-scope issue, create a plan covering the minimal sufficient change.

Prefer a focused correction that addresses the cause and fits existing patterns. Avoid broad refactors, dependency upgrades, new abstractions, feature additions, and adjacent cleanup unless required to resolve the issue within the original intent. Smallest reasonable means a sound fix, not just the fewest edited lines or a workaround that hides the symptom.

If no such fix is clear without a directional decision or scope expansion, ask me before starting any work.

### 4. Fix and verify
Implement the scoped fixes. Add or adjust meaningful regression coverage when warranted by the behavior and risk; run the relevant tests and required repository checks. Verify that the issue is resolved and the original behavior remains satisfied.

Investigate failures to distinguish regressions from unrelated baseline failures. If verification cannot be completed, identify what is blocked and what evidence is missing; do not claim success. Keep documentation aligned with the resulting implementation.

### 5. Start again from review
After any fix, return to step 1 and review the full accumulated changes for remaining issues and new regressions. Passing tests alone does not replace this review. Do not stop after a preset number of iterations or after checking only previously reported findings.

Complete when a full review produces no remaining in-scope issues, all plausible in-scope findings have been resolved or ruled out with evidence, and relevant verification is complete. Unrelated findings remain separate and should be told to me at the end.

If a blocker prevents progress, or fixes repeatedly oscillate or recreate an issue, pause and explain the unresolved cause or decision needed. Ask for the missing input instead of repeating ineffective edits. Report the loop as incomplete, then resume when the blocker is resolved.

## Final report
Summarize the fixes, verification performed, and results. List unrelated findings separately with enough location and impact detail for follow-up use the 'Unslop' skill to make your output more readable. Clearly distinguish a completed loop from unresolved questions or verification blockers; do not imply the review proves the absence of all possible defects.
