---
name: gamedev-repo-onboarding
description: Inspect an unfamiliar or inherited game repository before changes. Use to identify engine versions, project structure, scenes, assets, packages, build targets, tests, workflows, and fragile legacy boundaries.
---

# GameDev Repository Onboarding

Build an evidence-backed map of a game project before recommending or implementing changes.

## Workflow

1. Read repository rules, task tracking, implementation plans, README files, and recent walkthroughs or changelog entries.
2. Inventory the root and locate engine markers, source folders, content/assets, packages/plugins, project settings, tests, build automation, documentation, and generated directories.
3. Verify the engine and version from project files. Do not infer them from folder names alone.
4. Identify startup scenes/levels, game states, core loops, input, UI, rendering pipeline, persistence, audio, physics, networking, platform services, and build targets when present.
5. Trace one representative player journey from entry point through state changes, content, success/failure, save effects, and presentation.
6. Locate architectural seams: engine-facing components, engine-neutral domain logic, data/config assets, services, editor tooling, and platform adapters.
7. Find existing commands and validation paths from project files rather than inventing them.
8. In legacy projects, identify hidden coupling, oversized managers, global state, serialized dependencies, fragile load order, obsolete packages, missing tests, and behavior that must be preserved.
9. Record unknowns separately from verified facts and recommend the smallest safe next step.

Read [references/onboarding-checklist.md](references/onboarding-checklist.md) for engine markers and the report structure.

## Boundaries

- Do not change files during an onboarding-only request.
- Do not open or rewrite editor-managed/binary assets with unsafe text tooling.
- Do not install an engine, SDK, package, plugin, or build dependency without approval.
- Do not claim a scene, platform, package, or command is active unless repository evidence supports it.

## Output Contract

Report the verified engine/context, repository map, runtime flow, important assets and entry points, commands, risks, unknowns, and recommended first task.
