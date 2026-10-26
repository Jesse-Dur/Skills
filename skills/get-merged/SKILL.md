---
name: get-merged
description: Use when asked to get the code merged. Do not use unless clearly & explicitly asked to merge code
---

# Get Merged

Carry the current task through to a merged PR. A request to use this workflow
authorizes the commits, pushes, PR creation, review replies needed by monitoring,
and final merge; do not ask for routine confirmation at each step.

1. Commit the intended changes, splitting them into sensible commits as needed.
   Preserve unrelated work and use a feature branch if needed.
2. Read and run [Review Fix Loop](../review-fix-loop/SKILL.md) on the full task
   diff against the intended base. Commit any resulting fixes.
3. Push the branch and create a PR, or update the existing PR for these changes.
4. Read and run [PR Monitor & Fix](../pr-monitor-fix/SKILL.md) until checks and
   reviews pass. Apply [Commenting](../commenting/SKILL.md) when posting replies.
5. Once monitoring passes, merge as this workflow's final step. PR Monitor & Fix
   does not merge; this step supplies that authorization. Immediately before
   merging, refresh the PR and confirm the current head has passed required
   checks, required approvals are satisfied, no actionable review feedback or
   blocking threads remain, and the PR is mergeable. If the head or feedback has
   changed, resume monitoring. Use the repository's merge convention and guard
   the merge against a concurrent head change. Never bypass checks or protections.
6. Confirm the PR is merged and report its link, merge commit, and verification.
   Arming a watcher or enabling auto-merge is not confirmation of a completed merge.

Keep the scope and help-seeking rules of the two loop skills. Ask for help when
access, human approval, unresolved intent, or another concrete blocker prevents
progress; explain what is needed and resume when it is resolved.
