---
name: gamedev-feature-implementation
description: Implement non-trivial gameplay systems, game tools, content workflows, persistence, input, audio, animation, AI, physics, or platform-facing features within an existing project's architecture.
---

# GameDev Feature Implementation

Deliver a complete game feature while preserving existing behavior, asset relationships, platform constraints, and project workflow.

## Before Editing

1. Read repository rules and active tracking documents.
2. Confirm current acceptance criteria and required plan approval for a complex change.
3. Verify engine/version, target platforms, relevant packages/plugins, existing architecture, similar features, and available tests.
4. Map affected runtime state, engine-facing components, data/config assets, scenes/prefabs/resources, input, UI, rendering/audio feedback, saves, builds, and documentation.
5. Ask before a new dependency, project-wide setting, major architecture, paid service, or irreversible content/data migration.

## Implementation

1. Keep game/domain rules separate from engine lifecycle and presentation where the project already supports that boundary.
2. Make state transitions and ownership explicit: initialize, enter, update, pause, resume, cancel, disable, unload, save, restore, and clean up only as applicable.
3. Preserve serialized identifiers, asset references, prefab/scene ownership, resource lifetimes, and existing configuration conventions.
4. Validate required data and references. Use safe defaults only when the behavior remains visible and intentional.
5. Consider allocations, update frequency, object churn, physics/render cost, loading, and platform budgets in hot or repeated paths; consult `gamedev-performance-optimization` when available for measured bottlenecks, or report the measurements still needed.
6. Preserve save compatibility or provide an explicit version/migration strategy when persisted data changes.
7. Handle failure and interruption without leaving stuck input, subscriptions, tasks, coroutines, pooled objects, native resources, or partial state.
8. Add the smallest meaningful tests and update closely related documentation.

Read [references/implementation-checklist.md](references/implementation-checklist.md) for affected-area and lifecycle checks.

## Boundaries

- Do not rewrite working adjacent systems for convenience.
- Do not hand-edit complex engine-managed assets unless the format and repository workflow make the edit demonstrably safe.
- Do not claim visual quality, game feel, audio, hardware behavior, or editor integration passed without evidence.
- Server-side API, authentication, and business-dashboard implementation belongs to an appropriate separately installed app/backend skill.

## Output Contract

Report the feature and criteria, verified context, affected areas, logic, files changed, automated checks, pending manual checks, compatibility risks, and limitations.
