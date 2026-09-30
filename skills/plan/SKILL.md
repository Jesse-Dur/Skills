---
name: plan
description: Plan the smallest reasonable fixes for confirmed in-scope issues. Use when asked to plan or fix an issue.
---

# Plan
Create the plan only; do not implement the fixes.
Keep plans in the conversation or task tracking, not project documentation. Update documentation only to reflect implemented behavior.

## Plan the smallest reasonable fixes
For each confirmed in-scope issue, create a plan covering the minimal sufficient change.

Prefer a focused correction that addresses the cause and fits existing patterns. Avoid broad refactors, dependency upgrades, new abstractions, feature additions, and adjacent cleanup unless required to resolve the issue within the original intent. Smallest reasonable means a sound fix, not just the fewest edited lines or a workaround that hides the symptom.

If no such fix is clear without a directional decision or scope expansion, ask me before starting any work.