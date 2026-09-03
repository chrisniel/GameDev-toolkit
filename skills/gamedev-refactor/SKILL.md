---
name: gamedev-refactor
description: Improve game code, components, systems, prefabs, scenes, tools, and project structure while preserving gameplay behavior, timing, serialization, asset links, visuals, and platform compatibility.
---

# GameDev Refactor

Improve maintainability without silently changing the game.

## Workflow

1. Define the exact maintainability problem and the behavior, timing, feel, data, assets, and public interfaces that must remain unchanged.
2. Read repository rules and confirm plan approval for a broad or architectural refactor.
3. Map callers, serialized fields, scene/prefab references, events, state transitions, saves, tests, editor tools, packages, and platform-specific code.
4. Establish characterization tests or a manual baseline for behavior that is not already protected.
5. Choose the smallest useful transformation: extract pure logic, split responsibilities, reduce duplication, clarify ownership, remove verified dead code, or isolate engine/platform adapters.
6. Preserve serialized names/identifiers or use the engine's supported rename/migration mechanism.
7. Make changes in reviewable steps and run relevant checks after each coherent boundary.
8. Re-check runtime lifecycle, object reuse, timing, animation/audio/visual output, asset references, saves, and builds.
9. Update documentation only where structure or customization guidance changed.

Read [references/refactor-checklist.md](references/refactor-checklist.md) for preservation and cleanup checks.

## Rules

- Do not mix feature changes or speculative optimization into a behavior-preserving refactor.
- Do not replace architecture merely because another pattern is fashionable.
- Do not delete code, assets, scenes, prefabs, or packages based only on no text references; engine-managed references may be serialized.
- Do not rename serialized fields/types/assets without a verified migration path.
- Do not claim game feel or visuals are preserved until the assigned check is performed.

## Output Contract

Report the problem, preserved behavior contract, structural changes, compatibility handling, files affected, automated checks, pending experiential checks, and remaining debt.
