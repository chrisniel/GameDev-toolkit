# MCP-Free Unity Skills And Client Portability — Walkthrough

**Purpose:** Strengthen the reusable GameDev skills for resumed Unity work without requiring a server.

**Audience:** Toolkit maintainer and developers preparing a game project such as Kumpuni.

**Status:** Skill/documentation implementation complete; live-client and game verification pending.

**Last updated:** 2026-09-03

## What Was Delivered

- One shared Unity editor-evidence reference for files, local commands, manual Editor work, and already-available automation.
- Better evidence requirements in testing, debugging, profiling, and shader checklists.
- Plain-name skill routing with Codex-specific UI metadata retained.
- A cross-client setup guide for Codex, Claude Code, Gemini CLI, and context-only chat use.
- Versioned CoplayDev source attribution and a complete MIT notice that travels with the Unity skill.

The toolkit still has 17 skills. No MCP, client configuration, Unity package, Kumpuni change, or skill installation was delivered.

## Files Changed

- `skills/gamedev-unity-development/SKILL.md` and `references/unity-checklist.md` — entrypoint and evidence gates.
- `skills/gamedev-unity-development/references/unity-editor-workflows.md` — canonical optional workflow detail.
- `skills/gamedev-unity-development/references/source-notices.md` and `THIRD_PARTY_NOTICES.md` — portable attribution.
- `skills/gamedev-test-creation/references/testing-checklist.md`, `skills/gamedev-bug-investigation/references/investigation-checklist.md`, `skills/gamedev-performance-optimization/references/performance-checklist.md`, and `skills/gamedev-rendering-shaders/references/shader-checklist.md` — specific evidence additions.
- `skills/gamedev-workflow-toolkit/SKILL.md`, its `references/routing-guide.md`, and feature/rendering entrypoints — client-neutral cross-references.
- `scripts/validate-skills.ps1` — recognize both plain and dollar-prefixed references.
- `docs/skill-portability.md`, `README.md`, `CONTRIBUTING.md`, provenance, docs index, tracking, and changelog — aligned usage and delivery state.

## How The Logic Works

1. Identify the task and load only relevant available skills/references.
2. Inspect files and actual session capabilities; never infer live Unity access from the model name.
3. Perform authorized source work and existing checks where supported.
4. For Editor-dependent work, verify project/scene identity and compilation readiness, or give the user exact manual steps.
5. Inspect actual result artifacts; a started test job, stale screenshot, or successful text edit is not proof of gameplay success.
6. Report passed, failed, unavailable, and pending checks separately.

This also protects existing prototypes: a greyboxing request does not authorize replacing a populated scene just because an upstream example starts from an empty scene.

## Key Concepts

- **Capability:** Something the current client can actually do, such as read a file or run Unity tests. Model knowledge is not a capability connection.
- **Progressive disclosure:** Load a short skill first and deeper references only when needed, keeping unrelated instructions out of the task.
- **Evidence provenance:** Where a result came from, including project/build/device and whether it was observed or supplied by the user.
- **Namespace:** A distinguishing prefix such as `gamedev-` that reduces collisions with another skill collection.

## How To Use It

Follow [the client setup guide](../06_Guides/skill-portability.md), then run its read-only Kumpuni onboarding prompt in the actual game workspace. Review the selected skill paths and reported evidence gaps before requesting a feature change.

Keep complete skill folders together, especially the Unity skill's source notice. Keep copied material private and compare destination copies before replacement. No automatic installer was added.

## Safe Customization

Keep engine versions, exact scene paths, input choices, budgets, and Kumpuni design rules in the game project's own documentation. Adjust these reusable workflows only when observed usage reveals a general gap. Do not turn one project-specific failure into a universal API ban or add a server prerequisite.

## Verification

- Repository validator: passed for 17 skills and 3,299 combined description characters.
- Official skill-creator quick validator: all 17 skills passed.
- Plain and dollar-prefixed reference normalization: checked.
- Markdown local links and whitespace: 57 files passed. PowerShell syntax, validator expected-count rejection, no-hard-MCP/no-root-license checks, and git diff whitespace validation passed.
- Cross-client discovery and behavior: pending user verification; official documentation was reviewed, but no Claude/Gemini session was launched.
- Kumpuni Editor, visual, performance, and device behavior: pending user verification; no game files were accessed or changed in this delivery.

For repeatable manual prompts and expected results, use the [verification matrix](../06_Guides/skill-portability.md#manual-cross-client-verification).

## Limitations And Deferred Work

Skills cannot prove live Editor state without actual access or user evidence. A future custom MCP remains a separate project and requires a fresh explicit request. CoplayDev is reference material, not a bundled runtime. Public distribution, Git actions, installed-copy synchronization, and external setup remain outside this delivery.

## Related Documentation

- [Implementation plan](../02_Planning/implementation-plan.md#1415-current-skills-only-delivery--2026-09-03)
- [Task tracking](../01_Tracking/task.md)
- [Provenance](../06_Guides/provenance.md)
