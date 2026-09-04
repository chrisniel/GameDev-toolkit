# GameDev Workflow Toolkit Specialization — Walkthrough

**Template version:** `Docs_ProjectWorkflowStarterKit_v1.0`

**Purpose:** Explain the transition from a broad app/web-oriented skill collection to 17 collision-safe GameDev skills.

**Audience:** Maintainers, game developers, technical artists, and users testing the skills in real projects.

**Status:** Implemented and repository-validated; real-project behavior and Unity editor/device checks remain pending user evaluation.

**Last updated:** 2026-08-31

## What Was Delivered

- Replaced 36 generic skill folders with exactly 17 `gamedev-*` skills.
- Consolidated useful engineering guidance into GameDev routing, gameplay, UI, rendering, performance, testing, build, review, documentation, and Unity workflows.
- Added a dedicated shader skill covering HLSL-style source, Unity ShaderLab, Shader Graph, variants, materials, GPU cost, and PC/mobile verification.
- Replaced blanket optimization rules with evidence-based Unity guidance for update callbacks, allocations, lookups, object destruction, and pooling.
- Strengthened the repository validator to enforce the inventory, namespace, unique identities, description budget, references, and UI prompts.
- Removed app/web/business-only skills and generic aliases so this pack can coexist with a separate app/web collection.

No installed Codex skills, source repositories, Git state, GitHub state, licenses, packages, engines, or external services were changed.

## Important Files

- `skills/gamedev-workflow-toolkit/SKILL.md` — routes multi-step game-development work.
- `skills/gamedev-feature-implementation/SKILL.md` — owns gameplay and game-system delivery.
- `skills/gamedev-performance-optimization/SKILL.md` — requires measured runtime optimization.
- `skills/gamedev-performance-optimization/references/performance-checklist.md` — defines Unity hot-path and PC/mobile checks.
- `skills/gamedev-rendering-shaders/SKILL.md` — owns shader and rendering work.
- `skills/gamedev-rendering-shaders/references/shader-checklist.md` — covers compatibility, variants, GPU cost, and visual validation.
- `skills/gamedev-unity-development/SKILL.md` — provides Unity-specific lifecycle and asset safety.
- `skills/gamedev-ui-development/SKILL.md` — covers game menus, HUDs, settings, navigation, and accessibility.
- `scripts/validate-skills.ps1` — validates the repository's expected skill shape.
- `README.md` — lists and explains all 17 skills.

## How The Logic Works

1. A request routes to one primary `gamedev-*` skill based on its main outcome.
2. Supporting skills are added only when they reduce a real risk; Unity is added when engine-specific lifecycle or asset behavior matters.
3. Shared skills remain engine-neutral, while Unity-specific rules stay in `gamedev-unity-development`.
4. Rendering/shader and performance work coordinate but retain different ownership: one protects visual/pipeline correctness, while the other proves resource improvements.
5. Automated checks verify structure and text invariants; editor, visual, audio, feel, hardware, and device outcomes remain assigned to real project testing.

## Key Concepts

- **Namespace** — a consistent name prefix that separates one family of skills from another. `gamedev-` prevents collisions with generic skills such as another repository's `performance-optimization`.
- **Progressive disclosure** — keeping the short routing and essential rules in `SKILL.md`, then loading a detailed reference only when that task needs it.
- **Frame-time budget** — the amount of time available to produce one frame. It is more useful than average FPS when identifying hitches and CPU/GPU limits.
- **Shader variant** — a compiled shader program for one combination of keywords, platform settings, or quality features. Too many variants can increase build, loading, and memory cost.
- **Object pool** — a bounded collection of reusable instances. It can reduce repeated creation/destruction cost, but every reused object needs a reliable reset and cleanup contract.

## How To Use It

1. Install a complete skill folder without changing its `gamedev-` name.
2. Invoke it explicitly or describe the task naturally:

   ```text
   $gamedev-repo-onboarding examine this Unity project.
   $gamedev-rendering-shaders create a URP dissolve effect for mid-range Android devices.
   $gamedev-performance-optimization investigate enemy-spawn frame hitches.
   ```

3. Combine only the skills needed by the request. A Unity shader performance task may use rendering/shaders as primary, then performance and Unity as support.
4. Keep editor, visual, feel, audio, and device checks pending until a person performs the documented steps.

## Safe Customization

- Add a specialist skill only when real projects show distinct triggers and substantial reusable guidance that the current owners cannot express clearly.
- Keep new names under the `gamedev-` namespace and update the README, validator count, tracking plan, walkthrough, and changelog together.
- Add engine-specific behavior to an engine specialization instead of leaking it into every shared skill.
- Keep `Update()` or `Destroy()` when they are the correct lifecycle choice; optimize only measured frequency, allocation, object-churn, or frame-cost problems.
- Preserve complex Unity scenes, prefabs, controllers, visual graphs, and other editor-managed assets through the supported Editor workflow.

## Verification

### Automated / Repository Checks

- [X] Repository validator passed for 17 folders, 17 unique names, and 3,299 combined description characters.
- [X] Official quick validation passed for every one of the 17 skills.
- [X] Consolidation checks found the planned legacy, player-journey, save-compatibility, UI, reusable-component, routing, technical-debt, and review-handoff guidance in its destination.
- [X] No generic skill folder remains under `skills/`.

### Manual / User-Owned Checks

- [ ] Install selected skills in the intended personal Codex environment and confirm discovery by `gamedev-*` name.
- [ ] Use representative gameplay, shader, performance, UI, build, and Unity prompts in real repositories.
- [ ] Confirm primary/supporting routing is useful and does not capture unrelated app/web requests.
- [ ] Perform Unity editor, player-build, visual, audio, interaction-feel, PC, and mobile checks when a real task exercises those rules.

Status: `Pending user verification`.

## Limitations And Deferred Work

- The first release composes general skills for AI, physics, animation, audio, networking, procedural generation, tooling, localization, XR, and consoles; it does not yet expose a specialist for each discipline.
- Unreal Engine remains plan-only.
- The repository does not install or update personal Codex skills automatically.
- The repository is private and unlicensed; public distribution remains unauthorized.

## Related Documentation

- `docs/08_Tracking/implementation-plan.md`
- `docs/08_Tracking/task.md`
- `README.md`
- `CONTRIBUTING.md`
- `CHANGELOG.md`
- `docs/provenance.md`
