---
name: gamedev-test-creation
description: Add meaningful unit, integration, editor, play-mode, regression, build, save-compatibility, and player-journey tests for game systems using the project's existing test infrastructure.
---

# GameDev Test Creation

Protect important game behavior at the cheapest reliable layer.

## Workflow

1. Read the behavior contract, defect history, engine/version, existing test framework, assemblies/modules, fixtures, and test commands.
2. Identify the risk to protect: pure rules, state transitions, engine integration, asset/editor behavior, save compatibility, build configuration, or complete player journey.
3. Choose the lowest layer that can prove the behavior without excessive fragility:
   - unit tests for deterministic rules and calculations;
   - integration/editor tests for engine services, serialization, importers, or tooling;
   - play-mode/runtime tests for lifecycle, scene wiring, physics, UI, and system interaction;
   - build/smoke tests for packaging and platform startup;
   - manual tests for visual quality, audio, animation feel, hardware, and experiential judgment.
4. Reuse existing fixtures and conventions. Keep time, random seeds, input, clocks, saves, and external services controllable where practical.
5. Test success, important failure, interruption, repeated use, cleanup, and compatibility paths proportional to risk.
6. Avoid assertions on irrelevant frame timing, object order, generated text, or implementation details that make tests flaky.
7. Run the narrow test first, then the smallest relevant surrounding suite.
8. Report skipped/unavailable tests and manual ownership honestly.

Read [references/testing-checklist.md](references/testing-checklist.md) for test selection and game-specific cases.

## Rules

- Do not create a broad suite merely to demonstrate a small documentation or configuration change.
- Do not simulate a passed editor, build, device, or playtest result.
- Do not use destructive or private production data.
- Do not replace useful automated tests with a manual checklist when stable automation is practical.
- Do not automate experiential assertions that require human visual, audio, accessibility, or game-feel judgment.

## Output Contract

Report risk covered, selected test layers, tests added/changed, commands and exact results, manual checks, gaps, and flakiness or platform limitations.
