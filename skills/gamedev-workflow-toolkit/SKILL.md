---
name: gamedev-workflow-toolkit
description: Route and coordinate multi-step game-development work across gameplay, engines, UI, rendering, performance, testing, builds, review, and documentation while preserving project approval and verification rules.
---

# GameDev Workflow Toolkit

Coordinate complex game-development work without loading or applying every specialist workflow by default.

## Core Rule

Choose one primary skill for the user's main outcome, add only supporting skills that materially reduce risk, and follow the repository's current approval and external-action boundaries. Prefer the simplest architecture that meets verified gameplay, platform, production, and maintenance needs.

## Route The Work

Skill names below are references, not universal slash/dollar commands. Use the client's discovered skills or read the available skill file. If a supporting skill is not installed, continue the primary workflow and report the missing specialist context; do not claim it was loaded.

All workflows are MCP-independent. For Unity, use `gamedev-unity-development` when available to choose repository, existing local command, user-operated Editor, or already-connected automation paths. No client or model choice supplies tools automatically.

1. Read repository rules and active tracking documents.
2. Identify the requested outcome, engine, target platforms, implementation/review/debug mode, affected assets or systems, and verification expectations.
3. Select the most specific primary skill:
   - feature or gameplay system: `gamedev-feature-implementation`
   - defect or regression: `gamedev-bug-investigation`
   - frame time, memory, loading, or footprint: `gamedev-performance-optimization`
   - shaders, materials, or rendering: `gamedev-rendering-shaders`
   - menus, HUDs, settings, or accessibility: `gamedev-ui-development`
   - tests: `gamedev-test-creation`
   - automated build or packaging failure: `gamedev-build-pipeline-repair`
   - structural cleanup: `gamedev-refactor`
   - review: `gamedev-code-review`
   - documentation: `gamedev-project-documentation`
4. Add an engine specialization only when engine APIs, serialized/editor-managed assets, lifecycle, packages, or engine-specific validation matter.
5. Add diagnostics, security, error handling, testing, review, or documentation only when the task actually needs that layer.
6. Define acceptance criteria before a vague, risky, or multi-system implementation.
7. Inspect existing architecture and conventions before choosing a design. Ask before a new framework, package, paid service, or major architectural direction.
8. Implement surgically, validate in proportion to risk, and distinguish automated evidence from editor, visual, experiential, hardware, or target-device checks.
9. Update the repository's configured tracking, walkthrough, and changelog artifacts when its rules require them.

Read [references/routing-guide.md](references/routing-guide.md) when a request spans several skills or its primary owner is unclear.

## Boundaries

- Do not treat a plan as implementation authorization when repository rules require approval.
- Do not perform Git, publication, deployment, package installation, store submission, hosted build, or external-service actions without the required explicit permission.
- Do not duplicate app/web backend skills. For an online game, use this toolkit for game-client and game-system concerns and a separately available backend/API/auth skill for service implementation.
- Do not invent engine versions, packages, scenes, build targets, performance results, or playtest outcomes.

## Output Contract

For complex work, report the request classification, selected primary and supporting skills, execution order, completed changes, verification evidence, manual checks, limitations, and next safe action.
