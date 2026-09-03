# GameDev Workflow Toolkit

A private, collision-safe collection of 17 agent skills for game-development planning, implementation, debugging, performance, rendering, testing, review, builds, documentation, and Unity repository work.

Every skill uses the `gamedev-` namespace so this toolkit can coexist with separately installed app/web skills without generic-name collisions.

## Current Status

- The GameDev specialization is implemented and repository validation is complete.
- Skill instructions are model-neutral, with setup guidance for Codex, Claude Code, and Gemini CLI. Live cross-client testing remains pending.
- Unity workflows support repository/local-command evidence and exact manual Editor handoff without MCP. A custom MCP is future-only.
- The local `skills/` directory is the source of truth; installed Codex copies are separate and are not synchronized automatically.
- The toolkit has an engine-neutral core plus a Unity specialization.
- Rendering and shaders have dedicated HLSL-style, ShaderLab, Shader Graph, variant, GPU, and PC/mobile guidance.
- Unreal Engine support remains a future plan and is not exposed as an implemented skill.
- The repository remains private and intentionally has no license. See [`docs/provenance.md`](docs/provenance.md).

## Skill Inventory

| Skill | Primary use |
| --- | --- |
| `gamedev-workflow-toolkit` | Route and coordinate complex GameDev work. |
| `gamedev-repo-onboarding` | Understand unfamiliar or legacy game repositories. |
| `gamedev-acceptance-criteria` | Define observable gameplay and technical completion criteria. |
| `gamedev-feature-implementation` | Implement gameplay systems, tools, content workflows, saves, input, AI, physics, audio, and platform features. |
| `gamedev-bug-investigation` | Reproduce and fix game, editor, asset, build, and platform defects. |
| `gamedev-code-review` | Review code, assets, settings, tests, and verification evidence. |
| `gamedev-refactor` | Improve structure while preserving gameplay, serialization, visuals, and timing. |
| `gamedev-test-creation` | Add unit, integration, editor, play-mode, build, compatibility, and player-flow tests. |
| `gamedev-performance-optimization` | Profile frame time, CPU/GPU, memory, loading, physics, frame pacing, and footprint. |
| `gamedev-error-handling` | Design safe runtime, save, content, network, editor, and platform failure behavior. |
| `gamedev-diagnostics` | Add safe logs, profiler markers, crash context, and debug visibility. |
| `gamedev-security-review` | Review secrets, builds, networking trust, saves, mods, user content, and platform services. |
| `gamedev-build-pipeline-repair` | Repair automated imports, tests, builds, packaging, signing configuration, and artifacts. |
| `gamedev-project-documentation` | Maintain setup, architecture, controls, asset, build, test, and handoff docs. |
| `gamedev-ui-development` | Build menus, HUDs, settings, rebinding, responsive layouts, and accessible navigation. |
| `gamedev-rendering-shaders` | Author and optimize shaders, materials, render features, variants, and GPU effects. |
| `gamedev-unity-development` | Apply Unity-specific lifecycle, asset, package, editor, profiling, and validation rules. |

The toolkit composes skills instead of creating one skill for every discipline. Physics, AI, animation, audio, procedural generation, input, cameras, saves, editor tooling, and content pipelines normally route through `gamedev-feature-implementation` plus the relevant testing, performance, rendering, UI, or engine skill. New specialist skills can be added after repeated project evidence shows a real workflow gap.

## Repository Structure

```text
skills/                         The 17 reusable GameDev skills
docs/00_Draft/                  Non-authoritative templates and future plans
docs/07_Walkthrough/            Completed-delivery explanations
docs/08_Tracking/               Active task and implementation plan
scripts/validate-skills.ps1     Repository-local structural validator
AGENTS.md                       AI-assisted project rules
CONTRIBUTING.md                 Skill authoring and validation guidance
CHANGELOG.md                    Dated delivery history
```

## Using A Skill

After installation, select the skill using your client's supported mechanism. These examples use Codex dollar syntax:

```text
$gamedev-repo-onboarding examine this Unity repository before changes.
$gamedev-rendering-shaders diagnose this URP shader on Android.
$gamedev-performance-optimization profile enemy-spawn frame hitches.
```

Natural-language requests can also trigger matching skills in clients that support discovery. The workflow toolkit selects one primary skill and only the supporting skills the task needs. See the [cross-client usage guide](docs/skill-portability.md) for Claude Code, Gemini CLI, and chat-only use.

## Installing A Skill

Repository storage and client installation are separate. Follow the [canonical setup guide](docs/skill-portability.md) to select complete folders, choose the client's project-local destination, preserve supporting references and notices, and verify discovery.

No client installation or synchronization is performed automatically. Compare existing copies before replacement; keep these permission-restricted skills out of public game repositories. Different `gamedev-` names do not overwrite generic app/web skills, but duplicate copies of the same namespaced skill still need a scope review.

## Performance Philosophy

The toolkit measures before optimizing. It does not ban `Update()` or `Destroy()` categorically:

- Use `Update()` for genuine per-frame work, but keep it focused and avoid repeated allocations, searches, logging, and expensive queries in measured hot paths.
- Use events or lower-frequency scheduling for state-driven work.
- Use `FixedUpdate()` for physics-step behavior and `LateUpdate()` only for justified ordering-sensitive behavior.
- Use `Destroy()` for one-off cleanup; consider bounded, reset-safe pooling for frequently recreated objects only when profiling shows meaningful churn.
- Verify changes in representative player builds and target devices, including mobile thermal/memory constraints and PC quality/hardware variance.

## Development And Validation

Read `AGENTS.md` and `docs/08_Tracking/task.md` before work. Complex changes require current acceptance criteria, plain-English logic, and approval of the detailed plan.

Run the repository validator:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\validate-skills.ps1
```

It enforces the exact 17-skill inventory, `gamedev-` namespace, matching frontmatter/folder names, unique identities, description budgets, referenced local Markdown, and UI prompt consistency. Official quick validation and representative usage checks remain additional quality gates.

## Documentation

- [Documentation index](docs/README.md)
- [Provenance and private-use permission](docs/provenance.md)
- [Cross-client setup and Kumpuni onboarding prompt](docs/skill-portability.md)
- [Third-party notices](THIRD_PARTY_NOTICES.md)
- [Implementation plan](docs/08_Tracking/implementation-plan.md)
- [Task tracking](docs/08_Tracking/task.md)
- [GameDev specialization walkthrough](docs/07_Walkthrough/gamedev-workflow-toolkit-specialization.md)

## Known Limitations

- The toolkit has private-use permission but no public license and must not be treated as open source.
- No automatic installer or updater is included.
- No MCP server is bundled or required.
- Skills are instruction workflows, not replacements for installed game engines, platform SDKs, profilers, or human playtesting.
- Unity editor, visual, audio, experiential, hardware, and target-device outcomes require real project verification.
- Unreal Engine guidance remains plan-only.
