# GameDev Skill Routing Guide

Use this reference only when a request crosses several GameDev disciplines or routing is ambiguous.

## Primary Routes

| Main outcome | Primary skill | Common support |
| --- | --- | --- |
| Understand a repository | `gamedev-repo-onboarding` | Engine specialization, documentation |
| Clarify scope | `gamedev-acceptance-criteria` | Feature, UI, rendering, performance |
| Add gameplay or tooling | `gamedev-feature-implementation` | Tests, engine specialization |
| Diagnose broken behavior | `gamedev-bug-investigation` | Diagnostics, tests, engine specialization |
| Improve runtime performance | `gamedev-performance-optimization` | Rendering, diagnostics, engine specialization |
| Create or repair shaders | `gamedev-rendering-shaders` | Performance, engine specialization |
| Build menus or HUDs | `gamedev-ui-development` | Feature, tests, engine specialization |
| Repair CI/build packaging | `gamedev-build-pipeline-repair` | Diagnostics, engine specialization |
| Improve failure behavior | `gamedev-error-handling` | Diagnostics, tests |
| Add diagnostic visibility | `gamedev-diagnostics` | Bug investigation, performance |
| Review trust boundaries | `gamedev-security-review` | Tests, diagnostics |
| Preserve behavior while cleaning | `gamedev-refactor` | Tests, code review |
| Add automated coverage | `gamedev-test-creation` | Feature or bug owner |
| Review completed changes | `gamedev-code-review` | Relevant specialist |
| Maintain repository knowledge | `gamedev-project-documentation` | Skill that owns changed behavior |

## Cross-Cutting Game Domains

Route physics, AI, animation, audio, input, cameras, saves, procedural generation, editor tooling, and content pipelines through `gamedev-feature-implementation` unless the user's main goal is clearly debugging, performance, testing, rendering, UI, or build repair. Add a new specialist only after repeated real work demonstrates distinct triggers and substantial non-duplicated guidance.

## Safe Execution Order

1. Read context and current state.
2. Clarify observable acceptance criteria.
3. Identify asset, lifecycle, save, platform, and performance risks.
4. Inspect existing patterns and choose the smallest design.
5. Implement the primary behavior.
6. Add failure handling and diagnostics where they improve supportability.
7. Add or update meaningful tests.
8. Run available checks and assign honest manual/editor validation.
9. Review changed behavior and update documentation.

Do not use every support skill automatically. A focused one-skill task is preferable when additional workflows would only repeat generic advice.

## Tool Availability Is Not Skill Availability

No MCP is necessary to select or follow these skills. For Unity, let the engine specialization choose the evidence path for each operation. Available files support source analysis; existing commands support only their actual checks; manual Editor steps remain pending until confirmed. Use an already-connected tool only when its actual schema and authorization cover the operation. Do not build, connect, or install an MCP as a fallback.
