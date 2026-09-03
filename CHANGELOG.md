# Changelog

All notable project changes are recorded here.

## 2026-09-03

### Added

- MCP-free Unity editor-evidence workflows covering context, compilation, scene safety, test completion, captures, and manual handoff.
- Cross-client setup guide and read-only Kumpuni starter prompt for Codex, Claude Code, and Gemini CLI.
- Versioned CoplayDev documentation source inventory and complete MIT notice inside the Unity skill.
- Skills-only portability walkthrough and updated implementation/task status.

### Changed

- Strengthened Unity, testing, debugging, performance, shader, and routing guidance without adding a skill or MCP dependency.
- Replaced shared dollar-command assumptions with plain skill names; retained Codex UI metadata.
- Updated the validator to check plain and dollar-prefixed skill references.

### Verification And Limitations

- All 17 skills passed repository and official quick validation; description total remains 3,299 characters.
- Client setup documentation is source-checked, not a claim of live Claude/Gemini compatibility testing.
- Kumpuni playtesting, client discovery, installation, Git operations, and all MCP development remain unperformed.

## 2026-08-31

### Added

- Seventeen collision-safe `gamedev-*` skills covering workflow routing, onboarding, acceptance criteria, gameplay and tooling features, bug investigation, review, refactoring, tests, performance, error handling, diagnostics, security, build pipelines, documentation, game UI, rendering/shaders, and Unity development.
- Dedicated `gamedev-rendering-shaders` guidance for HLSL-style source, Unity ShaderLab, Shader Graph, render pipelines, materials, variants, GPU cost, visual correctness, and PC/mobile validation.
- Evidence-based Unity runtime performance rules for update callbacks, allocations, lookups, physics queries, object creation/destruction, reset-safe pooling, and target-platform budgets.
- GameDev specialization walkthrough with installation, routing, safe customization, key concepts, verification, and deferred specialist domains.
- Detailed private adaptation roadmap and acceptance criteria for the `dev-workflow-toolkit` through Phases 0–6.
- Active task tracking with phase status, prerequisites, deferred work, verification state, and an explicit permission ledger.
- Repository rules allowing immediate planning-document updates when planning or acceptance-criteria work is requested.
- Proportionate-testing and user-owned manual verification rules for Unity, Unreal Engine, visual, editor-dependent, and experiential checks.
- Action-specific authorization requirements for Git operations, repository visibility changes, and external repository modifications.
- Repository README, contribution guide, documentation index, and reusable walkthrough standard.
- `dev-workflow-toolkit` orchestration skill with project-neutral workflow, verification, documentation, and deployment guidance.
- `unity-development` skill with Unity version inspection, serialized-asset safety, proportional automated checks, and explicit manual-playtest status.
- Unreal Engine planning-only document without exposing an unimplemented skill.
- Dependency-free PowerShell validator for skill structure, identities, references, and UI prompts.
- Completed-delivery walkthrough explaining the toolkit adaptation and safe customization model.
- `Docs_ProjectWorkflowStarterKit_v1.0` component card, copy/configuration guide, and completed-delivery walkthrough.
- Privacy-safe provenance and private-use permission record for Phase 6A.
- Phase 6A private-testing repository plan, acceptance criteria, and user handoff walkthrough.

### Changed

- Replaced the broad 36-skill app/web-oriented inventory with exactly 17 focused GameDev skills after migrating useful engineering guidance into their approved destinations.
- Renamed the active toolkit identity to `GameDev Workflow Toolkit` and namespaced every installed skill candidate with `gamedev-` to avoid collisions with separate app/web collections.
- Consolidated legacy analysis, player journeys, save compatibility, component/refactor guidance, responsive UI, state, architecture, technical debt, routing, documentation, and handoff practices into smaller GameDev owners.
- Strengthened `scripts/validate-skills.ps1` to enforce the 17-skill count, `gamedev-` prefix, identity matching, individual/combined description budgets, local references, and UI prompt consistency.
- Updated repository setup, contribution, provenance, tracking, private-handoff, and documentation-index guidance for the GameDev-only baseline.
- Generalized copied skill descriptions, business examples, component references, documentation templates, and architecture guidance.
- Replaced source-specific VPS topology with a repository-driven deployment baseline.
- Cleaned the task template's conversational text and made automated/manual verification fields proportionate to each project.
- Established `docs/07_Walkthrough/` as this repository's canonical walkthrough folder, with first-available numbering guidance for other repositories.
- Tightened inherited CI/CD and deployment-repair skills so hosted reruns, pushes, service changes, and deployments require explicit external-action permission.
- Generalized root `AGENTS.md` into universal cross-project rules plus one editable Project Profile.
- Generalized task, implementation-plan, and walkthrough templates so new projects may use different numbered folders, unnumbered folders, root-level files, or `Not used` documentation systems.
- Updated repository status and protected boundaries to distinguish authorized private testing from unauthorized public redistribution.

### Security And Limitations

- No installed Codex skills, engine packages, external tools, source repositories, Git state, GitHub state, hosted pipelines, builds, or platform services were changed during the specialization.
- Real-project skill routing, Unity editor behavior, player builds, visual/audio quality, game feel, hardware, and target-device results remain pending user testing.
- The source rights holder confirmed private copying, adaptation, storage, and testing permission; the private evidence remains outside the repository.
- Public release and licensing remain blocked until the copied source material has owner-approved redistribution or licensing terms.
- Phase 6B, installed-skill synchronization, public visibility, and automated Git mutations remain outside the completed repository-local Phase 6A work.
- This repository intentionally contains no `LICENSE` file.

### Validation

- Repository validation passed for exactly 17 skill folders, 17 unique `gamedev-*` names, and 3,299 combined description characters.
- Official skill-creator quick validation passed for all 17 final skills.
- Consolidation coverage checks confirmed legacy onboarding, player journeys, save compatibility, UI safe areas/rebinding, reusable prefabs/data, routing, technical debt, and review handoff guidance in their approved destinations before source deletion.
- Final skill entrypoints contain no unintended app/web business vocabulary and no obsolete explicit generic skill invocation remains in current documentation.
- Repository-local validation passed for 36 skill folders and 36 unique skill names.
- Official skill-creator quick validation passed for all 36 skills.
- Relative-link validation passed across 92 Markdown files after the starter-kit follow-up.
- Repository text whitespace, unfinished-marker, stale-name/infrastructure, and high-confidence secret scans passed.
- Private/no-license, workflow rename, Unity availability, Unreal plan-only, and no-remote boundaries passed.
- Phase 6A repository-local checks passed for 36 skill folders, 94 Markdown files, high-confidence secrets, private-evidence attachments, and the no-license boundary.
- Intended handoff files passed the trailing-whitespace check; ignored `temp.txt` retains one pre-existing feedback-file finding and remains outside the handoff.
