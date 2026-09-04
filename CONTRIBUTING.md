# Contributing

This repository is currently private. Contributions should preserve the toolkit's GameDev focus, collision-safe namespace, reusable design, and permission boundaries.

## Before Editing

1. Read `AGENTS.md`.
2. Read `Docs/01_Tracking/task.md` and `Docs/02_Planning/implementation-plan.md`.
3. For a new feature or complex change, write plain-English pseudocode and acceptance criteria first.
4. Confirm that the current detailed plan is approved before implementing it.

Planning and tracking documents may be updated immediately when the user requests planning, a roadmap, or acceptance criteria. That permission does not authorize implementation.

## Skill Structure

Every skill must use a lowercase, hyphenated folder name beginning with `gamedev-` and contain a matching `SKILL.md` frontmatter name:

```text
skills/gamedev-example-skill/
├── SKILL.md
├── agents/openai.yaml       Optional UI metadata
├── references/              Optional conditional guidance
├── scripts/                 Optional deterministic helpers
└── assets/                  Optional output assets
```

Keep `SKILL.md` concise. Place substantial conditional details in references and link those references from the entry point. Do not add empty folders or speculative resources.

The current baseline contains exactly 17 skills. Adding another requires a demonstrated routing/workflow gap, an approved plan, an updated inventory, and a deliberate validator change. Do not add generic-name aliases for compatibility with other skill repositories.

## Writing Guidance

- Describe the task the skill handles and when it should activate.
- Keep shared instructions client-neutral. Use plain skill names in cross-references; keep client-specific invocation syntax in setup examples or that client's metadata.
- Keep skills usable without MCP. Missing tools mean repository/manual fallback or an explicit evidence gap, not permission to install a server.
- Keep third-party notices with adapted skill folders so copying one complete folder preserves attribution.
- Preserve user intent and authorization boundaries.
- Keep shared workflows engine-neutral and place verified Unity-only behavior in `gamedev-unity-development`.
- Do not make a particular studio, game, server, render pipeline, target device, framework, or deployment topology a universal assumption.
- Use measurable, conditional performance rules. Do not turn one project's optimization into a blanket ban on valid lifecycle APIs.
- Route shader-specific work through `gamedev-rendering-shaders` and keep generated or visual-graph assets under their supported editor ownership.
- Clearly distinguish required rules, optional recommendations, examples, and future plans.
- Never include secrets, private contact details, or production data.
- Do not add MCP or external-service dependencies unless the skill genuinely requires them and the user approves them.

## Documentation Responsibilities

- Update the closest canonical document when behavior changes.
- Keep `task.md`, the implementation plan, walkthroughs, and `CHANGELOG.md` aligned.
- Put completed-delivery explanations under `Docs/03_Walkthroughs/`.
- Maintain standard numbered documentation lifecycle directories as defined in `AGENTS.md`.

## Verification

Run checks that are directly relevant to the change:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\validate-skills.ps1
```

The validator enforces the exact 17-skill inventory, the `gamedev-` prefix, unique folder/frontmatter names, description budgets, references, and UI prompts. Also run the official skill quick validator, inspect changed Markdown, and use `git diff --check` when tracked history exists. Unity/editor/visual checks may be handed to the user with exact steps and must remain pending until confirmed.

## Git And Publication

Do not run `git add`, `git commit`, `git push`, create or switch branches, create tags, open pull requests, change repository visibility, or publish releases unless the user explicitly authorizes the specific action.

This repository intentionally has no license. Do not add one or publish copied/adapted material until ownership and redistribution terms are explicitly settled.
