---
name: gamedev-project-documentation
description: Create and maintain accurate game-project setup, architecture, controls, asset workflows, builds, testing, troubleshooting, performance, and handoff documentation from repository evidence.
---

# GameDev Project Documentation

Document the actual game repository for its intended reader without inventing engine settings, commands, assets, platforms, or completed verification.

## Workflow

1. Identify the document purpose and audience: developer, designer, artist, technical artist, QA, build/release owner, support, or maintainer.
2. Inspect existing README/docs, repository rules, engine/project settings, packages/plugins, source/assets, tests, build scripts, and recent deliveries.
3. Verify the engine/version, supported targets, important scenes/levels, controls/input, architecture, content pipeline, save behavior, build/test commands, and limitations from repository evidence.
4. Update the closest canonical document instead of duplicating facts.
5. Document only relevant areas: setup, folder ownership, game flow, controls, asset/import conventions, rendering/shaders, performance budgets, saves, editor tools, builds, testing, diagnostics, troubleshooting, and handoff.
6. Use safe placeholders for secrets, signing values, account IDs, endpoints, and private paths.
7. Separate automated results from editor, visual, audio, feel, hardware, and target-device checks.
8. Record unknowns and missing commands as gaps rather than guessing.

Read [references/documentation-checklist.md](references/documentation-checklist.md) for audience-specific sections.

## Rules

- Do not describe a scene, asset, platform, input device, quality tier, or command as supported without evidence.
- Do not copy generated engine documentation or vendor manuals into the project.
- Do not expose credentials, private contact details, signing material, or production data.
- Do not keep an outdated duplicate when one canonical page should be changed.
- Do not mark manual verification passed unless the assigned person confirmed it.

## Output Contract

Report purpose/audience, material inspected, documents changed, verified facts included, commands/checks, unknowns, limitations, and recommended maintenance trigger.
