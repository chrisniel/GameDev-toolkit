---
name: gamedev-code-review
description: Review game code, assets, configuration, tests, and build changes for correctness, lifecycle, performance, compatibility, security, regressions, and honest verification before handoff.
---

# GameDev Code Review

Find actionable defects and risks in the changed scope before summarizing the delivery.

## Review Workflow

1. Read repository rules, acceptance criteria, plan, changed files, and relevant engine/project context.
2. Understand intended behavior and preserved behavior before judging implementation style.
3. Review the actual diff or changed files, including scripts, serialized assets, project settings, packages/plugins, shaders, tests, and docs.
4. Check correctness, state/lifecycle ownership, cleanup, save compatibility, null/missing references, repeated use, and interruption paths.
5. Check engine/editor asset safety, metadata/GUID relationships, generated files, platform overrides, and build configuration.
6. Check hot paths for unjustified per-frame work, allocations, object churn, physics/render cost, and unmeasured optimization claims.
7. Check input, UI focus, accessibility, localization, aspect ratio, visual/audio feedback, and platform behavior when affected.
8. Check trust boundaries, secrets, user content, network assumptions, and release configuration when applicable.
9. Check tests and documentation against the changed behavior; distinguish automated evidence from pending editor/device/playtest results.
10. Report findings in severity order with tight file/line locations and a concrete failure scenario.

Read [references/review-checklist.md](references/review-checklist.md) for severity and domain prompts.

## Rules

- Prioritize correctness and regression findings over preferences or broad refactor suggestions.
- Do not claim a defect without a plausible affected path and supporting code/config evidence.
- Do not hide important findings inside a general summary.
- If no actionable finding exists, say so and identify remaining unverified areas.
- Preparing a review summary does not authorize Git, pull-request, publication, or deployment actions.

## Output Contract

List findings first by severity, each with location, cause, impact, and suggested correction. Then summarize assumptions, checks reviewed, and residual manual or platform risk.
