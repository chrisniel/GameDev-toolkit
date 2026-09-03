---
name: gamedev-acceptance-criteria
description: Turn gameplay, UI, rendering, tools, content, platform, and technical requests into observable GameDev acceptance criteria with explicit states, budgets, edge cases, and verification ownership.
---

# GameDev Acceptance Criteria

Convert an idea or defect description into conditions that a developer, designer, artist, QA tester, or player can observe and verify.

## Workflow

1. Restate the requested player, developer, content-author, or system outcome.
2. Identify the actor, entry conditions, engine/project context, target platforms, input methods, and affected game states.
3. Separate confirmed requirements from reasonable assumptions and blocking questions.
4. Define the happy path as observable behavior rather than implementation detail.
5. Define interruption, retry, pause, scene transition, disable/destroy, save/load, and repeated-use behavior when relevant.
6. Identify affected scripts/systems, scenes/prefabs/assets, UI, audio/visual feedback, input, persistence, builds, and documentation.
7. Define non-functional targets such as frame-time budget, memory ceiling, loading target, accessibility, device support, determinism, or network tolerance only when the project supplies or approves them.
8. Define editor/content setup requirements and safe defaults without hiding missing required references.
9. Define automated checks and user-owned play, visual, audio, feel, hardware, or target-device checks.
10. Produce pass/fail criteria and keep unverified experiential results pending.

Read [references/criteria-template.md](references/criteria-template.md) when a formal reviewable acceptance-criteria document is needed.

## Rules

- Do not use vague criteria such as "feels good," "looks optimized," or "works on mobile" without a test condition or named owner.
- Do not invent performance budgets, art direction, supported hardware, or platform requirements.
- Do not confuse an editor setup step with player-visible behavior.
- Do not require a specific implementation unless it is an approved technical constraint.

## Output Contract

Provide request understanding, actor and goal, affected areas, assumptions/questions, functional and non-functional requirements, state and data rules, edge cases, testing ownership, and final pass/fail criteria.
