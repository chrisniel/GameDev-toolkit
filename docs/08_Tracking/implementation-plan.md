# Implementation Plan — GameDev Workflow Toolkit

**Status:** Track S skills-only strengthening implemented and structurally validated; Gemini/Claude and Kumpuni behavior checks pending; custom MCP remains future-only

**Feedback / Request Source:** User feedback in `temp.txt` and follow-up instructions dated 2026-08-31

**Scope Mode:** Private, surgical adaptation — modify only this repository. Treat `Jeruzael/mcp-server` as read-only source material and do not publish copied material until licensing permission is established.

**Latest User Note:** Proceed with existing skills for resumed Kumpuni development and Gemini/Claude use. No MCP tools are required: use pure skills, available repository commands, and manual Editor evidence. A future custom MCP will be independent, with CoplayDev used only as reference material. No MCP work starts automatically after this delivery.

---

## 1. Request Understanding

Previous baseline objective, now superseded by Section 13: turn the repository into a reusable, brand-neutral development toolkit while preserving useful workflows and aligning every delivery with `AGENTS.md`.

Core deliverables:

1. Establish a private governance and documentation baseline.
2. Adapt the copied skills without modifying `Jeruzael/mcp-server`.
3. Remove source-project branding as a toolkit identity and use only generic examples where useful.
4. Add practical game-development guidance, prioritizing Unity and keeping Unreal Engine planning-only.
5. Standardize task, implementation-plan, and walkthrough documentation.
6. Validate the toolkit with proportionate automated checks and clearly assigned manual checks.

**Boundary note:** This plan does not authorize publishing the repository, adding a public license, changing Gio/Jeruzael's repository, installing skills outside this repository, or starting Phase 6.

---

## 2. Actor And Goal

### Actors

- Toolkit maintainer working in this repository.
- Developer invoking a skill from an existing software or game-development project.
- User performing Unity/editor/visual verification when automation is unsuitable.

### Goal

Provide a clear, reusable collection of Codex development skills that can guide planning, implementation, testing, documentation, and handoff across projects without depending on source-project infrastructure or an MCP server.

---

## 3. Evidence And Current Findings

| Evidence | Interpretation |
| --- | --- |
| The initial 35 local skills and 75 skill files matched `Jeruzael/mcp-server` byte-for-byte. | Phase 2 was an adaptation pass, not another import. |
| The source repository has no `LICENSE` file. | Keep this repository private; do not add a public license or publish copied content until the owner authorizes it. |
| `README.md`, `CONTRIBUTING.md`, `task.md`, and the previous implementation plan were empty. | Documentation foundations must be created before release. |
| Source branding initially appeared in 11 files. | Branding and environment-specific assumptions required a targeted cleanup. |
| No Unity- or Unreal-specific skill initially existed. | Unity guidance was a new deliverable; Unreal remains future planning only. |
| Kumpuni-related walkthrough examples exist in the local `Website-Portfolio` repository. | Their structure informed a new generic template without copying project-specific content. |
| The referenced MCP server exposes skill store/pull endpoints, but it is not connected as an active MCP server here. | The toolkit must work without those endpoints; MCP-assisted distribution is optional future work. |

---

## 4. Confirmed Requirements

- The previous baseline toolkit name was `dev-workflow-toolkit`; Section 13 replaces it with `GameDev Workflow Toolkit` and namespaced skills.
- Source-project branding must not be presented as a toolkit profile or required environment.
- This repository remains private during Phases 0–5.
- Only this repository may be modified.
- Existing useful skills may be adapted to match local repository rules.
- Unity guidance may use user-owned manual testing for editor, visual, and experiential behavior.
- Automated checks must be relevant and proportionate.
- `git add`, `git commit`, `git push`, branch, tag, pull-request, and visibility changes require explicit authorization.
- Unreal Engine remains plan-only until separately approved for implementation.
- Phase 6 begins only after Phases 0–5 are complete and the user approves it.

## 5. Working Assumptions And Open Questions

### Assumptions

- The previous baseline used `dev-workflow-toolkit` as its identity; this is retained only as historical migration context.
- Business-oriented skills may remain when their instructions are generic and broadly reusable.
- The local `skills/` directory remains the source of truth; installed Codex copies are not updated without separate permission.
- The current folder name may remain unchanged locally until repository creation or rename is explicitly requested.

### Open Questions / Deferred Decisions

- No blocking Phase 0–5 question remains.
- This repository intentionally has no license. Any future copyright notice, license, or public release requires a new owner-approved decision.

---

## 6. Permission And Ownership Rules

- Planning documents can be updated under the trigger rules recorded in `AGENTS.md`.
- Skill and documentation implementation was approved for Phases 0–5.
- External repositories remain read-only.
- No source-server endpoint, external account, remote repository, or production/private data may be changed during this work.
- A manual check assigned to the user remains `Pending user verification` until the user reports the outcome.
- Public release is blocked until redistribution and licensing authority is established.

---

## 7. Implementation Roadmap

### Phase 0 — Private Governance Baseline

**Objective:** Establish the safe private boundary and authoritative project rules.

**Planned work:**

1. Historical Phase 1 action: use `dev-workflow-toolkit` as the then-current project identity in new documentation.
2. Keep the repository private and leave public licensing deferred.
3. Record source provenance without copying private or irrelevant personal information.
4. Add planning-document, manual-verification, and Git authorization boundaries to `AGENTS.md`.
5. Record current repository state and licensing dependency in tracking documents.

**Affected files:**

- `AGENTS.md`
- `docs/08_Tracking/implementation-plan.md`
- `docs/08_Tracking/task.md`

**Exit criteria:**

- [X] Repository rules express all newly confirmed permission boundaries.
- [X] The plan clearly blocks public release and Phase 6.
- [X] No license, remote, commit, or visibility change has been made.

### Phase 1 — Repository And Documentation Foundation

**Objective:** Make the private repository understandable and maintainable.

**Planned work:**

1. Write a brand-neutral `README.md` covering purpose, structure, installation concepts, skill invocation, and current private status.
2. Write `CONTRIBUTING.md` with skill structure, naming, review, testing, and permission expectations.
3. Clean draft templates, including removal of conversational placeholder text.
4. Add a canonical docs index and keep draft material clearly non-authoritative.
5. Keep `task.md`, this plan, and `CHANGELOG.md` aligned.

**Prerequisites:** Phase 0 complete.

**Exit criteria:**

- [X] A new contributor can identify the toolkit purpose and skill layout.
- [X] Installation guidance distinguishes repository source files from installed Codex skills.
- [X] Documentation has no source-company profile requirement or misleading public-release claim.

### Phase 2 — Skill Adaptation And Neutralization

**Objective:** Convert the imported skill collection into a brand-neutral toolkit aligned with repository rules.

**Planned work:**

1. Historical Phase 2 action: rename and rewrite the source-branded workflow orchestrator as `dev-workflow-toolkit` before the later GameDev specialization.
2. Update its `agents/openai.yaml` metadata and default invocation prompt consistently.
3. Remove or generalize source-specific language in the 10 other affected skill/reference files.
4. Review every skill description for precise routing and overlap.
5. Align workflows with planning, manual verification, Git authorization, privacy, and external-repository boundaries.
6. Preserve useful source behavior without copying MCP-server deployment assumptions into unrelated skills.
7. Do not modify the source repository or installed Codex skill copies.

**Prerequisites:** Phases 0–1 complete.

**Exit criteria:**

- [X] A case-insensitive branding scan finds no stale source identity or infrastructure dependency in repository content.
- [X] Every skill has valid YAML frontmatter and a folder-matching skill name.
- [X] The orchestration skill and its UI metadata use the approved neutral identity.
- [X] Business examples are generic or explicitly marked as examples.

### Phase 3 — Game-Development Guidance

**Objective:** Add practical Unity support while keeping Unreal Engine as documented future scope.

**Planned work:**

1. Design a Unity-focused skill around C# scripts, scenes, prefabs, serialized fields, assets, input, and Play Mode workflows.
2. Include safeguards for binary/editor-managed assets and existing project conventions.
3. Define proportional automated checks such as compilation or existing EditMode/PlayMode tests when available.
4. Define exact manual handoff steps for editor, visual, animation, interaction-feel, and device checks.
5. Document Unreal Engine as a future plan only; do not create or claim an implemented Unreal skill.

**Prerequisites:** Phase 2 skill conventions finalized.

**Exit criteria:**

- [X] Unity requests route to focused, actionable guidance.
- [X] The skill never claims an editor/visual check passed without user confirmation.
- [X] Unreal material is visibly marked as planned, not available.

### Phase 4 — Reusable Tracking And Walkthrough Templates

**Objective:** Standardize continuity and educational handoff documents.

**Planned work:**

1. Finalize generic `task.md` and `implementation-plan.md` templates.
2. Use the locally available Kumpuni-related portfolio walkthroughs as structural references.
3. Create the canonical walkthrough template under `docs/07_Walkthrough/`.
4. Require meaningful deliveries to explain logic blocks, at least three beginner-friendly concepts, exact paths, usage steps, and safe customization.
5. Avoid duplicating information whose canonical source is another tracking document.

**Prerequisites:** Satisfied by the locally identified `Website-Portfolio/docs/07_Walkthrough/` examples.

**Exit criteria:**

- [X] All three templates are reusable and free of project-specific behavior presented as universal.
- [X] Template placeholders are clearly labeled and contain no conversational debris.
- [X] Repository rules link to the canonical templates.

### Phase 5 — Validation, Review, And Private Handoff

**Objective:** Demonstrate that the private toolkit is internally consistent without excessive testing.

**Planned work:**

1. Validate every skill with the available skill validator or equivalent frontmatter/structure checks.
2. Check Markdown links, referenced paths, duplicate skill identities, unfinished placeholders, and stale branding.
3. Run repository-wide whitespace checks and inspect the complete working tree without staging it; use `git diff --check` once tracked history exists.
4. Exercise representative explicit `$skill-name` prompts where practical.
5. Provide manual Unity verification steps and record the result only after user confirmation.
6. Complete a final documentation and code review.
7. Update `task.md`, `CHANGELOG.md`, and walkthrough documentation.

**Prerequisites:** Phases 0–4 complete.

**Exit criteria:**

- [X] All relevant automated checks pass or have a documented limitation.
- [X] User-owned manual checks are clearly passed, failed, or pending.
- [X] No Git mutation or external publication occurred without explicit permission.
- [X] Private handoff identifies the remaining licensing and publication dependency.

### Phase 6 — Distribution, Publication, Or MCP Integration

**Status:** Split into Phase 6A private testing and Phase 6B possible public distribution.

Phase 6A is detailed in Section 12. Its repository-local readiness work is approved, while the Git/GitHub handoff is user-owned. Phase 6B remains blocked and may include public visibility, an owner-approved license, releases, broad redistribution, or authorized MCP integration.

---

## 8. Pseudocode / Logic Sequence

1. Read the active task and implementation plan before each work session.
2. Confirm the current phase and its prerequisites.
3. Inspect only the files needed for that phase.
4. Make the smallest approved repository-local changes.
5. Run the smallest reliable automated checks relevant to those changes.
6. Assign editor/visual/manual checks to the user when automation is unsuitable.
7. Keep user-owned checks pending until confirmed.
8. Update tracking, changelog, and walkthrough documents for completed deliveries.
9. Show the changed files, validation results, limitations, and next phase.
10. Stop before Git mutations, external changes, public licensing, or Phase 6 unless separately authorized.

---

## 9. Testing And Verification Plan

### Automated

- [X] Skill folder and frontmatter validation.
- [X] Folder name and frontmatter `name` consistency.
- [X] Markdown link and referenced-file checks.
- [X] Case-insensitive stale-brand and infrastructure scan.
- [X] Duplicate skill-name scan.
- [X] Repository-wide trailing-whitespace validation; `git diff --check` is not an effective complete-tree check until files are tracked.
- [X] Repository-local skill-validator execution.

### Manual / User-Owned

- [ ] Confirm skill discovery and `$skill-name` invocation in Codex after installation is separately authorized.
- [ ] Confirm Unity editor behavior, visual output, interaction feel, and device behavior when the skill is used on an approved Unity implementation.
- [X] Review the adapted walkthrough template against the locally available Kumpuni-related examples.

---

## 10. Final Acceptance Criteria

- [X] The previous baseline used `dev-workflow-toolkit` and did not present source branding as its identity; Section 13 later superseded that name.
- [X] The repository remains private during Phases 0–5.
- [X] Public licensing and publication remain blocked until a new owner-approved decision.
- [X] Only this repository is modified.
- [X] Planning documents can be updated under the new explicit trigger rule without implying implementation permission.
- [X] Git and external-system actions require action-specific permission.
- [X] All retained skills are generic, internally consistent, and valid.
- [X] Unity guidance includes proportional automated checks and honest manual-test handoff.
- [X] Unreal Engine remains plan-only.
- [X] Task, plan, changelog, and walkthrough documentation stay aligned.
- [X] Phase 6 did not begin and still requires fresh approval.

---

## 11. Follow-Up Plan — Generalized Project Workflow Starter Kit

**Status:** Implemented and validated in the current repository; cross-project user evaluation pending

**Reusable component:** `Docs_ProjectWorkflowStarterKit_v1.0`

**Category:** Documentation / AI workflow rules

### Purpose

Turn the active root `AGENTS.md` and its task, implementation-plan, and walkthrough templates into a reusable cross-project starter kit. Preserve planning, safety, verification, continuity, and permission rules while keeping documentation locations and domain-specific details easy to edit.

### Reusable Core

- Plan and obtain approval before complex implementation.
- Preserve task continuity using the repository's configured tracking location.
- Keep documentation aligned with behavior and structure.
- Prefer simple, maintainable, accessible, and responsive solutions when relevant.
- Use proportionate automated checks and honest manual-verification handoff.
- Make surgical changes and clarify material unknowns.
- Protect privacy, secrets, Git state, external repositories, and publication boundaries.

### Customization Points

Add one clearly marked `Project Profile` section near the top of `AGENTS.md` with:

- active task file path or `Not used`;
- implementation-plan file path or `Not used`;
- walkthrough folder/template path or `Not used`;
- changelog path or `Not used`;
- project-specific manual-verification areas;
- optional project-specific rules and protected boundaries.

The reusable templates will not assume that tracking is always folder `08` or walkthroughs are always folder `07`. They will refer to the active paths configured in the project profile and use clearly labeled placeholders where an example path is necessary.

The current repository profile will keep:

- `docs/08_Tracking/task.md`;
- `docs/08_Tracking/implementation-plan.md`;
- `docs/07_Walkthrough/` and its template;
- `CHANGELOG.md`;
- game-engine/editor/visual manual-verification guidance.

### Pseudocode / Logic Sequence

1. Add a short scope and precedence statement explaining that `AGENTS.md` is a reusable baseline with an editable project profile.
2. Move repository-specific paths and domains into the project profile.
3. Rewrite universal rules to reference configured paths rather than fixed folder numbers.
4. Make changelog and walkthrough requirements conditional on the active project profile.
5. Generalize Unity/Unreal wording to editor-dependent, visual, hardware-dependent, or experiential verification; retain game-engine context in this repository's profile.
6. Generalize `task-template.md`, `implementation-plan-template.md`, and `walkthrough-template.md` so they refer to configured documentation locations rather than fixed `07`/`08` paths.
7. Update the draft/template README with a short copy-and-configure sequence for new projects.
8. Preserve strict planning, privacy, Git, external-repository, dependency, and destructive-action boundaries.
9. Add concise customization guidance so copying the files does not leave misleading paths.
10. Validate that every configured current-project path exists and that no safety boundary was weakened.
11. Update task tracking, changelog, and the existing toolkit-adaptation walkthrough after implementation.

### Affected Files

- `AGENTS.md`
- `README.md`
- `docs/00_Draft/README.md`
- `docs/00_Draft/project-workflow-starter-kit.md`
- `docs/00_Draft/task-template.md`
- `docs/00_Draft/implementation-plan-template.md`
- `docs/07_Walkthrough/walkthrough-template.md`
- `docs/README.md`
- `docs/08_Tracking/implementation-plan.md`
- `docs/08_Tracking/task.md`
- `docs/07_Walkthrough/gamedev-workflow-toolkit-specialization.md`
- `CHANGELOG.md`

### Acceptance Criteria

- [X] `AGENTS.md` clearly distinguishes universal rules from the editable project profile.
- [X] Copying the file to another repository requires editing one obvious profile section rather than searching every rule for hardcoded paths.
- [X] The current repository's task, plan, walkthrough, and changelog paths remain correctly configured.
- [X] Universal testing language is framework- and engine-neutral.
- [X] Walkthrough and changelog requirements can be disabled with `Not used` without leaving contradictory rules.
- [X] Task, implementation-plan, and walkthrough templates contain no mandatory `07`/`08` folder assumption.
- [X] The template README explains which files to copy and which project-profile values to customize.
- [X] Templates remain useful when a new project uses unnumbered docs folders or different numbered folders.
- [X] Complex implementation still requires approval of the current detailed plan.
- [X] Planning-document edits still do not authorize implementation.
- [X] Git actions remain independently permission-gated.
- [X] Paid services, dependencies/frameworks, destructive diagnostics, external systems, production/private data, and publication remain approval-gated.
- [X] Privacy, secret, source-license, and external-repository protections are preserved.
- [X] Configured paths and Markdown formatting pass validation.

### Validation Plan

- Confirm every configured current-project path exists.
- Search universal sections and reusable templates for fixed folder numbers, framework names, client/company identities, and repository-specific assumptions.
- Compare all current safety and authorization rules before and after the rewrite.
- Run repository Markdown-link and whitespace validation.
- Review the final `AGENTS.md` and templates as both active repository artifacts and a copyable starter kit.

---

## 12. Phase 6A — Private Testing Repository

**Status:** Repository-local readiness and GameDev specialization implemented and verified; user-owned private handoff may resume

### 12.1 Request Understanding

Store the completed toolkit in an empty private GitHub repository under the maintainer's intended personal account so it has an off-device backup, version history, and a controlled source for later skill testing. This phase does not make the toolkit open source, install skills into Codex, or authorize public distribution.

### 12.2 Actors And Goal

- **Maintainer:** Chris, who controls the intended private GitHub destination and performs later personal-account testing.
- **Source rights holder:** Gio/Jeruzael, who confirmed private copying, adaptation, storage, and testing permission through private written communication on 2026-08-31.
- **System:** The local Git repository and an empty private GitHub repository.

The goal is a verifiably private, permission-backed repository that mirrors the reviewed local toolkit without exposing private conversation evidence or granting public reuse rights.

### 12.3 Affected Areas

- **Repository documentation:** privacy-safe provenance, README status, documentation index, tracking, walkthrough, and changelog.
- **Security and privacy:** secret scanning, exclusion of screenshots/private identifiers, and private visibility verification.
- **Git:** initial branch, staging, initial commit, remote configuration, and first push are performed and verified by the user, not Codex.
- **GitHub:** user-created empty private repository under the confirmed personal account.
- **Skill installation:** excluded from the initial private-repository publication and retained as separately authorized follow-up testing.

### 12.4 Confirmed Requirements

- The destination must be private.
- The repository must remain unlicensed and must not claim open-source status.
- The source repository remains read-only.
- Permission evidence remains privately retained by the maintainer; the Discord screenshot and private identifiers must not be committed.
- The repository may contain a privacy-safe summary of the permission date, scope, source, and attribution.
- No paid service or new tool installation is required.
- Codex performs no Git mutation or GitHub repository action; the user owns and verifies those actions.
- Public release, public visibility, releases, packages, marketplace submission, and MCP registry integration are outside Phase 6A.

### 12.5 Assumptions And Blocking Inputs

- The intended private repository name is now `gamedev-workflow-toolkit`.
- The intended destination is the user's personal GitHub account, not Gio's account.
- The user will create an empty private GitHub repository through GitHub's interface because GitHub CLI is not installed. It should be created without a generated README, `.gitignore`, or license so the first push does not conflict with the reviewed local tree.
- The exact GitHub account and remote URL must be confirmed before a remote is added or a push is attempted.
- The target initial branch is assumed to be `main`; the user may keep another branch name if that is intentional and reflected in the final verification.
- Read-only Git commands will use a command-local `safe.directory` override. Changing global Git configuration is unnecessary and not authorized.

### 12.6 Pseudocode / Logic Sequence

1. Obtain approval of this exact Phase 6A plan and identify Git/GitHub action ownership.
2. Add a text-only provenance document that names the public source repository, describes the adapted work, records the permission date and private-use scope, preserves attribution, and explicitly withholds public redistribution permission.
3. Update the closest repository documentation so private-testing status and provenance have one canonical source.
4. Run the existing skill validator, Markdown-link check, whitespace check, stale-brand scan, high-confidence secret scan, and a complete pre-stage file review.
5. Stop and report any secret, private identifier, unexpected binary, generated file, or unclear ownership finding before Git staging.
6. Give the user the reviewed file scope, suggested commit message, and empty-private-repository checklist.
7. The user creates the private destination, reviews and stages the intended files, creates the initial commit, configures the remote, and pushes the chosen branch.
8. The user confirms the destination account, private visibility, branch, commit, and absence of a license or release.
9. Stop and investigate if the user reports any authentication, ownership, remote-content, visibility, or unexpected-file mismatch.
10. Record the user-confirmed result without requiring private account identifiers or credentials.
11. Update task tracking, changelog, and the delivery walkthrough with the actual verification results and remaining personal-account skill tests.

### 12.7 Planned Files

- `docs/provenance.md` — new canonical, privacy-safe provenance and permission-scope record.
- `README.md` — link to provenance and describe private-testing status.
- `docs/README.md` — add the provenance document to the documentation index.
- `docs/08_Tracking/implementation-plan.md` — record approved scope and actual results.
- `docs/08_Tracking/task.md` — maintain execution state and permission ledger.
- `docs/07_Walkthrough/phase-6a-private-testing-repository.md` — document the meaningful delivery after completion.
- `CHANGELOG.md` — add the dated completed-delivery entry after the private repository is verified.
- `.gitignore` — change only if the pre-stage review identifies a necessary privacy or generated-file exclusion.

### 12.8 Validation And Testing Checklist

- [X] All 36 repository skill folders pass the repository-local validator.
- [X] Markdown links and referenced repository paths pass validation across 94 Markdown files.
- [X] No trailing whitespace or malformed planning Markdown is introduced in the intended repository files; ignored `temp.txt` retains one pre-existing feedback-file finding.
- [X] No password, token, API key, private contact detail, Discord screenshot, temporary attachment, or other private evidence was found in the intended handoff files.
- [X] No stale source-brand identity is presented as the toolkit identity.
- [X] The provenance record accurately limits permission to private copying, adaptation, storage, and testing.
- [ ] The GitHub destination is empty, owned by the intended personal account, and visibly private before remote configuration.
- [ ] The initial commit contains only reviewed project files.
- [ ] The pushed default branch matches the reviewed local commit.
- [ ] No license, release, tag, pull request, public visibility, skill installation, or MCP integration is created.

### 12.9 Success, Failure, And Edge Cases

**Success:** The reviewed toolkit exists in the confirmed private personal repository, its provenance and restrictions are documented without private evidence, and local/remote verification agrees.

**Stop conditions:** The destination account is Gio's or otherwise incorrect; visibility is not demonstrably private; the remote is non-empty; authentication uses an unintended account; validation finds secrets/private evidence; Git reports unexpected history or staged files; or any requested action falls outside Phase 6A.

**Edge cases:** If the user later switches Codex accounts on the same Windows profile, local installed skills may remain shared at the operating-system profile level. Installing from the private repository therefore remains a separate, explicitly authorized test with an inventory and collision review.

### 12.10 Final Acceptance Criteria

- [X] The user approves this detailed Phase 6A plan before repository-local implementation begins.
- [X] The source rights holder's private permission is recorded without committing the original Discord evidence or private identifiers.
- [ ] The target GitHub account, empty repository, exact remote URL, and private visibility are confirmed before adding a remote.
- [X] Relevant repository validation and privacy/security checks pass before staging.
- [X] Codex performs no branch, staging, commit, remote, or push action; those actions are assigned to the user.
- [ ] The private repository contains the reviewed toolkit and no unintended files.
- [ ] The repository remains unlicensed and private.
- [ ] Phase 6B public distribution and personal Codex skill installation remain separate, unstarted work.

---

## 13. GameDev-Only Skill Specialization

**Status:** Implemented and repository-validated on 2026-08-31; installed-skill and real-project behavior testing remains pending user evaluation

### 13.1 Superseding Direction

This section controlled the repository's GameDev specialization. The broad app/web skill inventory has been replaced by a focused GameDev workflow toolkit. The friend's separate skill collection remains the preferred source for application and web development. Phase 6A's private GitHub handoff was paused during this work and may now resume because the new baseline is implemented and validated.

The local repository folder remains `mcp-server-gamedev` unless the user separately requests a repository-folder rename. The user continues to own every Git and GitHub action.

### 13.2 Request Understanding

Create a compact, reusable GameDev skill collection that can coexist with the friend's app/web skills without ambiguous duplicate names. Preserve strong general engineering practices where they improve game development, deeply rewrite them around game-specific evidence and workflows, consolidate overlapping skills, and remove skills whose standalone purpose belongs to application/web/business delivery.

The intended result is an extensible engine-neutral GameDev core with focused rendering/shader guidance and a Unity specialization. It is not intended to encode every possible game discipline in the first release; specialized skills can be added when repeated real-project work exposes a meaningful routing or workflow gap. Unreal Engine remains documented as a future, plan-only extension until separately approved.

### 13.3 Audit Evidence

| Measure | Current finding | Planning consequence |
| --- | ---: | --- |
| Skill folders | 36 | Reduce to a deliberately routed GameDev set. |
| Files under `skills/` | 78 | Consolidation must include supporting references and metadata, not only `SKILL.md`. |
| Approximate skill lines | 10,785 | Use staged rewrites and validation rather than an unreviewed bulk replacement. |
| Combined description length | 19,421 characters | Shorten descriptions to protect the skill-list context budget and improve routing. |
| Entrypoints with clear app/web/business terminology | 32 of 36 | Most retained skills require deep specialization, not superficial renaming. |
| Entrypoints with clear GameDev routing terminology | 1 of 36 | GameDev triggers and exclusions must become explicit across the final set. |
| Skills with explicit implicit-invocation policy | 0 of 36 | Keep the default automatic routing behavior and rely on precise names/descriptions. |

Official Codex behavior does not merge identically named skills from different locations; both may appear in selectors. Therefore, retaining generic names such as `performance-optimization` would remain confusing when this pack and the friend's pack are installed together. Every final skill will use the `gamedev-` namespace, and generic compatibility aliases will not be kept.

### 13.4 Confirmed Requirements And Design Decisions

- Use `gamedev-` at the start of every final skill name.
- Target exactly 17 final skill folders.
- Keep automatic/implicit invocation enabled by default; improve routing through concise, discriminating descriptions.
- Keep core workflows engine-neutral where practical and place Unity-specific editor, package, and lifecycle guidance in `gamedev-unity-development`.
- Give rendering and shader work a dedicated `gamedev-rendering-shaders` skill covering shader authoring, debugging, compatibility, variants, and GPU-focused optimization.
- Preserve evidence-first debugging, testing, review, documentation, security, and performance practices after adapting their examples and gates to games.
- Express performance guidance as conditional, measurable rules rather than blanket API bans; an API is acceptable when its frequency, allocation behavior, lifecycle, and target-device cost fit the verified budget.
- Treat online-service backend work as a cross-toolkit task: use the relevant GameDev skill for client/game concerns and the friend's API/auth/backend skill for service implementation.
- Remove obsolete generic aliases after migration so installing both repositories does not recreate name collisions.
- Do not install or synchronize repository skills into the active Codex skill directory as part of this change.
- Do not modify the source repository or the friend's installed skill collection.

### 13.5 Final Skill Inventory

| Final skill | Source material | GameDev responsibility |
| --- | --- | --- |
| `gamedev-workflow-toolkit` | `dev-workflow-toolkit`, `skill-router-execution-planner`, `technical-architecture-simplification` | Route GameDev work, enforce approval gates, select the smallest useful skill sequence, and prefer simple game architecture. |
| `gamedev-repo-onboarding` | `repo-onboarding`, `legacy-code-understanding` | Understand an unfamiliar game repository, engine/version, scenes, assets, packages, build targets, entry points, and fragile legacy behavior. |
| `gamedev-acceptance-criteria` | `acceptance-criteria` | Convert gameplay, UI, tools, content, platform, and technical requests into observable and testable criteria. |
| `gamedev-feature-implementation` | `feature-implementation`, relevant parts of `state-management`, `reusable-component-thinking`, and architecture guidance | Implement gameplay systems and supporting game features while respecting engine structure, state, data, assets, and platform constraints. |
| `gamedev-bug-investigation` | `bug-investigation` | Reproduce and isolate gameplay, editor, build, physics, animation, rendering, input, save, and platform defects using evidence. |
| `gamedev-code-review` | `code-review`, `pr-preparation` | Review GameDev changes for correctness, lifecycle risks, performance, asset/config impacts, tests, and handoff clarity. |
| `gamedev-refactor` | `refactor-without-behavior-change`, `component-refactor`, `technical-debt-cleanup`, relevant reusable-system guidance | Improve scripts, systems, prefabs, scenes, and project structure without unintentionally changing game behavior or feel. |
| `gamedev-test-creation` | `test-creation`, `end-to-end-user-flow`, save compatibility safeguards | Add unit, integration, play-mode, regression, build, and player-journey tests appropriate to the engine and risk. |
| `gamedev-performance-optimization` | `performance-optimization` | Diagnose and improve frame time, CPU/GPU work, allocations, memory, loading, rendering, physics, input latency, and build footprint. |
| `gamedev-error-handling` | `error-handling` | Make runtime, editor-tool, content-loading, save, network, and platform failures safe and understandable. |
| `gamedev-diagnostics` | `logging-and-observability` | Add development- and production-safe logs, telemetry boundaries, crash context, profiler markers, and reproducible diagnostic information. |
| `gamedev-security-review` | `security-audit` | Review secrets, save data, mods/user content, networking, platform services, builds, and online-game trust boundaries when applicable. |
| `gamedev-build-pipeline-repair` | `ci-cd-repair` | Diagnose automated imports, tests, builds, packaging, signing configuration, artifacts, and platform pipeline failures. |
| `gamedev-project-documentation` | `project-documentation`, `documentation-system` | Maintain setup, controls, architecture, asset workflows, build instructions, testing, troubleshooting, and handoff documentation. |
| `gamedev-ui-development` | `frontend-screen-builder`, `form-builder`, `responsive-ui`, `design-system-consistency`, relevant UI state guidance | Build and review menus, HUDs, settings, inventories, prompts, navigation, controller focus, safe areas, aspect ratios, and accessibility. |
| `gamedev-rendering-shaders` | New specialization informed by rendering parts of `performance-optimization` and Unity guidance | Author, debug, review, and optimize shaders and rendering work across HLSL-style code, Unity ShaderLab/Shader Graph, materials, variants, pipelines, and target GPUs. |
| `gamedev-unity-development` | `unity-development` | Apply Unity-specific scene, prefab, component, serialization, lifecycle, package, editor, profiler, and validation guidance. |

#### Coverage Model And Extension Rule

The first release covers the major development workflow through a small set of composable skills rather than creating one skill for every game subsystem.

| Domain | Default owner | Supporting route when needed |
| --- | --- | --- |
| Gameplay systems, rules, state, progression, and saves | `gamedev-feature-implementation` | Acceptance criteria, testing, performance, and Unity specialization. |
| Input, controls, cameras, and interaction | `gamedev-feature-implementation` | UI development, testing, performance, and engine specialization. |
| Physics, AI, pathfinding, animation, audio, VFX, and procedural systems | `gamedev-feature-implementation` | Bug investigation, testing, performance, rendering/shaders, or engine specialization according to the actual task. |
| Rendering, materials, shaders, lighting, and GPU effects | `gamedev-rendering-shaders` | Performance optimization and engine specialization. |
| Menus, HUDs, settings, accessibility, focus/navigation, localization layout, and device-safe presentation | `gamedev-ui-development` | Feature implementation, testing, and engine specialization. |
| Assets, importing, serialization, scenes, prefabs, packages, and editor-managed data | Applicable engine specialization | Onboarding, feature implementation, documentation, and build repair. |
| Editor tools, content pipelines, automation, and reusable game tooling | `gamedev-feature-implementation` | Build-pipeline repair, testing, documentation, and engine specialization. |
| Performance, memory, loading, frame pacing, and platform budgets | `gamedev-performance-optimization` | Rendering/shaders, diagnostics, testing, and engine specialization. |
| Builds, packaging, CI, platform configuration, and artifacts | `gamedev-build-pipeline-repair` | Engine specialization, diagnostics, security, and documentation. |
| Multiplayer clients, platform services, mods, user content, and online trust boundaries | `gamedev-feature-implementation` | Security, diagnostics, testing, and the friend's backend/API/auth skills for server-side work. |
| Bugs, regressions, refactoring, quality gates, and technical debt | Matching investigation, test, refactor, or review skill | Engine specialization and documentation as applicable. |
| Setup, architecture, controls, workflows, troubleshooting, and handoff | `gamedev-project-documentation` | Workflow toolkit and the skill responsible for the delivered behavior. |

A new specialist skill should be added later only when real project evidence shows all of the following: the domain has distinct routing triggers; it needs a repeatable workflow or safety rules not expressed clearly by an existing skill; the content is substantial enough to justify its own context cost; and separating it reduces ambiguity rather than duplicating instructions. This lets audio, animation, AI, physics, networking, tooling, procedural generation, localization, XR, console, or another discipline become a dedicated skill when actual use demonstrates the need.

### 13.6 Complete 36-to-17 Disposition Map

| Current skill | Disposition |
| --- | --- |
| `acceptance-criteria` | Rename and deeply rewrite as `gamedev-acceptance-criteria`. |
| `api-contract-review` | Remove; use the friend's app/web toolkit for service-contract review. |
| `api-endpoint-builder` | Remove; use the friend's app/web toolkit for backend endpoints. |
| `authentication-flow` | Remove; use the friend's app/web toolkit for authentication services. |
| `bug-investigation` | Rename and deeply rewrite as `gamedev-bug-investigation`. |
| `business-prompt-ops` | Remove; outside GameDev engineering scope. |
| `ci-cd-repair` | Rename and rewrite as `gamedev-build-pipeline-repair`. |
| `code-review` | Rename and rewrite as `gamedev-code-review`; absorb `pr-preparation`. |
| `component-refactor` | Merge useful component/presentation separation guidance into `gamedev-refactor`, then remove. |
| `design-system-consistency` | Merge relevant visual-consistency guidance into `gamedev-ui-development`, then remove. |
| `dev-workflow-toolkit` | Rename and rewrite as `gamedev-workflow-toolkit`; absorb routing and architecture guidance. |
| `docker-and-deployment-fix` | Remove; outside the focused pack. Online-service deployment belongs to the friend's toolkit. |
| `documentation-system` | Merge useful structure/template guidance into `gamedev-project-documentation`, then remove. |
| `end-to-end-user-flow` | Merge as player-journey and game-flow testing in `gamedev-test-creation`, then remove. |
| `error-handling` | Rename and deeply rewrite as `gamedev-error-handling`. |
| `feature-implementation` | Rename and deeply rewrite as `gamedev-feature-implementation`; absorb relevant state, reusable-system, and architecture guidance. |
| `form-builder` | Merge settings, rebinding, character creation, and data-entry UI guidance into `gamedev-ui-development`, then remove. |
| `frontend-screen-builder` | Merge menu/HUD/screen construction guidance into `gamedev-ui-development`, then remove. |
| `legacy-code-understanding` | Merge as a legacy-project mode in `gamedev-repo-onboarding`, then remove. |
| `logging-and-observability` | Rename and rewrite as `gamedev-diagnostics`. |
| `migration-safety-review` | Remove as a standalone skill; move save/schema compatibility safeguards into feature implementation and testing. |
| `performance-optimization` | Rename and deeply rewrite as `gamedev-performance-optimization`. |
| `pr-preparation` | Merge review/handoff summary guidance into `gamedev-code-review`, then remove. |
| `project-documentation` | Rename and rewrite as `gamedev-project-documentation`; absorb the useful documentation-system material. |
| `refactor-without-behavior-change` | Rename and rewrite as `gamedev-refactor`; absorb component and technical-debt cleanup guidance. |
| `repo-onboarding` | Rename and deeply rewrite as `gamedev-repo-onboarding`; absorb legacy-code analysis. |
| `responsive-ui` | Merge aspect-ratio, safe-area, scaling, and device-layout guidance into `gamedev-ui-development`, then remove. |
| `reusable-component-thinking` | Merge relevant prefab, ScriptableObject/data-asset, modular-system, and reusable-tool guidance into feature implementation and refactoring, then remove. |
| `sales-offer-packaging` | Remove; outside GameDev engineering scope. |
| `security-audit` | Rename and specialize as `gamedev-security-review`. |
| `skill-router-execution-planner` | Merge into `gamedev-workflow-toolkit`, then remove. |
| `state-management` | Merge gameplay/session/save state into feature implementation and menu/UI state into UI development, then remove. |
| `technical-architecture-simplification` | Merge into the workflow orchestrator and feature implementation, then remove. |
| `technical-debt-cleanup` | Merge into `gamedev-refactor`, then remove. |
| `test-creation` | Rename and deeply rewrite as `gamedev-test-creation`. |
| `unity-development` | Rename and refine as `gamedev-unity-development`. |

The implementation therefore retains and rewrites 15 source folders, creates two focused destinations (`gamedev-ui-development` and `gamedev-rendering-shaders`), removes 7 directly out-of-scope folders, and removes 14 superseded folders after their useful GameDev material has been migrated.

### 13.7 Rendering And Shader Development Specification

`gamedev-rendering-shaders` will own rendering and shader work that is too specialized for general feature implementation or performance optimization. The skill will remain engine-neutral at its core and route Unity-specific asset and pipeline details through `gamedev-unity-development`.

The skill will cover:

- HLSL-style vertex, fragment/pixel, compute, surface, and shared shader-library work when supported by the project;
- Unity ShaderLab structure, passes, tags, properties, includes, render state, keywords, and pipeline compatibility;
- Shader Graph inspection and authoring with editor-managed asset safety; do not hand-edit complex serialized graph data or generated shader output without a proven safe workflow;
- Built-in Render Pipeline, URP, HDRP, custom render pipeline, graphics API, shader model, color space, HDR, and platform compatibility only after the repository context is verified;
- materials, textures, samplers, precision, blending, depth, culling, transparency, lighting, shadows, post-processing, particles, compute work, and VFX interactions;
- shader keywords and variant growth, compilation time, build inclusion/stripping, fallback/error shaders, and platform-specific branches;
- draw calls, passes, batching, GPU instancing, SRP Batcher compatibility, overdraw, texture sampling, bandwidth, branching, register pressure, and GPU occupancy when measurable;
- mobile constraints such as tile-based GPUs, thermal throttling, fill rate, bandwidth, texture formats, precision choices, and sustained device performance;
- PC constraints such as scalable quality tiers, resolution, GPU/driver variance, graphics APIs, VRAM, and shader compilation or pipeline-cache stutter;
- Frame Debugger, engine/GPU profiler captures, render-doc-style captures when an approved tool already exists, shader compiler output, variant reports, and representative target-device evidence;
- visual reference checks, fallback behavior, correctness under lighting/fog/camera combinations, and before/after image and performance comparison.

Shader rules must be conditional on the verified engine version, render pipeline, graphics API, target platform, and hardware tier. The skill must not assume that fewer instructions, lower precision, fewer branches, or one universal shader are automatically faster or visually correct; profiler/compiler evidence and target-device validation decide.

### 13.8 Game Performance Optimization Specification

`gamedev-performance-optimization` remains a first-class skill. Its current evidence-first structure is useful, but page, dashboard, API, database-query, and React-oriented routing must be replaced with game-performance concerns.

The rewritten skill will cover:

- frame-time and FPS budgets rather than FPS alone;
- CPU, GPU, main thread, render thread, jobs/worker threads, and synchronization stalls;
- managed allocations, garbage collection, native memory, asset residency, leaks, and memory peaks;
- startup, scene transition, streaming, shader-compilation, and asset-loading time;
- draw calls, batches, state changes, overdraw, shaders, lighting, particles, post-processing, and level-of-detail choices;
- physics step cost, collision complexity, fixed timestep, animation, AI, pathfinding, and update-loop frequency;
- input latency, frame pacing, hitching, thermal limits, and sustained target-device performance;
- asset import settings, texture/audio/mesh size, build size, and platform constraints;
- Unity Profiler, Profile Analyzer, Frame Debugger, Memory Profiler, profiler markers, and engine-neutral equivalents only when available;
- profiling development/player builds on representative target hardware because editor-only measurements may misrepresent runtime performance;
- before/after evidence and regression checks that preserve correctness, visuals, responsiveness, determinism where required, and intended game feel.

Required workflow:

1. Reproduce the slowdown, hitch, memory issue, or loading problem under controlled conditions.
2. Record a baseline and the target budget on representative hardware/build settings.
3. Determine whether the dominant limit is CPU, GPU, memory/GC, loading/IO, rendering, physics/simulation, asset/build footprint, or input/frame pacing.
4. Collect profiler evidence at the most specific useful layer.
5. Rank candidate fixes by expected impact, risk, implementation cost, and effect on game quality.
6. Apply the smallest high-confidence change.
7. Repeat the same capture and compare before/after measurements.
8. Run correctness, visual, experiential, and target-device checks; keep editor-dependent verification pending until confirmed.

#### Unity Runtime Performance Rules

The Unity specialization and performance skill will share these rules:

- Do not ban `Update()` categorically. Use it when behavior genuinely requires per-frame work, but keep the body small, avoid allocations and repeated lookups, and measure aggregate cost across all active components.
- Prefer events, callbacks, state-change notifications, scheduled ticks, or centralized update managers when work only needs to happen after a change or at a lower frequency. Do not introduce an update manager without evidence that its added complexity is justified.
- Use `FixedUpdate()` for physics-step work, not as a generic replacement for `Update()`; use `LateUpdate()` only for ordering-sensitive work such as appropriate camera follow behavior.
- Avoid per-frame `GetComponent`, broad `Find*` calls, reflection, avoidable LINQ, string formatting, excessive logging, repeated material instantiation, and allocating physics queries in measured hot paths. Cache stable references and use non-allocating or pooled alternatives when they remain correct.
- Do not ban `Destroy()` categorically. It is correct for one-off cleanup and lifecycle termination. Avoid frequent `Instantiate()`/`Destroy()` churn for recurring projectiles, enemies, effects, UI rows, or other hot-path objects when profiling shows allocation, GC, or frame-time cost; use bounded object pooling and reset contracts where reuse is safe.
- Pooling must define ownership, maximum growth, reset-on-rent/return behavior, disabled-state cleanup, event unsubscription, coroutine/task cancellation, and scene-transition handling. Pooling everything is not an optimization.
- Budget work by target tier. Mobile checks include sustained thermal behavior, memory ceiling, battery/power impact, fill rate, bandwidth, and lower-end devices; PC checks include scalable quality, resolution/GPU variance, VRAM, loading/storage variance, and frame pacing.
- Never claim an optimization merely because a discouraged API was removed. Compare representative player-build measurements before and after and verify gameplay, visuals, physics, timing, and input feel.

### 13.9 Naming, Metadata, And Migration Rules

For every retained or consolidated skill:

1. Rename the directory and the frontmatter `name` together.
2. Use lowercase letters, digits, and hyphens only, with `gamedev-` as the required prefix.
3. Keep each skill focused on one recognizable job and move lengthy framework/engine detail into supporting references.
4. Rewrite the description to state what the skill does, GameDev triggers, and important exclusions without enumerating an excessive list of app/web entities.
5. Target no more than 240 characters per description and no more than 4,000 combined description characters across the 17 skills. These are repository quality targets, not platform limits.
6. Update `agents/openai.yaml`, default prompts, internal `$skill-name` references, examples, repository docs, and validator expectations when a name changes.
7. Remove generic-name aliases and superseded folders only after migrated content is present in its destination.
8. Search for stale skill names and dangling links before considering a deletion complete.

### 13.10 Implementation Phases

#### G0 — Approval And Migration Snapshot

- Obtain approval for this exact inventory and disposition map.
- Reconfirm no Git execution, installed-skill synchronization, source-repository changes, or public publication is authorized.
- Capture a read-only file/reference inventory for every source skill before consolidation.

#### G1 — Preserve And Consolidate Useful Guidance

- Build each destination from the approved source inputs.
- Move only guidance that applies to games; rewrite examples instead of copying app/web vocabulary into the final pack.
- Create `gamedev-ui-development` from the useful UI-related sources and `gamedev-rendering-shaders` from the approved shader/rendering specification.
- Verify every source marked for consolidation has been reviewed before removing its folder.

#### G2 — Namespace And Metadata Migration

- Rename all retained destinations to `gamedev-*`.
- Align frontmatter, UI metadata, prompts, cross-references, documentation, and validation rules.
- Remove the old generic aliases after destinations validate.

#### G3 — Deep GameDev Rewrites

- Rewrite routing descriptions and core procedures for gameplay, content, tools, builds, platforms, assets, saves, player journeys, and engine/editor workflows.
- Keep the core engine-neutral and link Unity-specific concerns to `gamedev-unity-development`.
- Remove app/web/business-only assumptions, actor lists, examples, and mandatory database/API/frontend/backend framing.

#### G4 — Rendering, Performance, UI, And Unity Alignment

- Implement the rendering/shader specification in Section 13.7 and performance specification in Section 13.8.
- Add conditional Unity runtime-performance guidance for `Update()`, `FixedUpdate()`, `LateUpdate()`, object creation/destruction, pooling, allocations, searches, physics queries, and target-platform budgets.
- Align UI guidance around controller/keyboard/touch navigation, focus, safe areas, aspect ratios, HUD readability, accessibility, and runtime/editor validation.
- Align Unity guidance with the shared core skills without duplicating their full procedures.

#### G5 — Repository Documentation And Validator Alignment

- Rename the toolkit identity to `GameDev Workflow Toolkit` where the broad identity is no longer accurate.
- Update README, contribution guidance, documentation index, skill inventory, examples, current tracking, and reusable references.
- Keep `AGENTS.md` universal; update only its current-project profile or GameDev-specific verification areas when applicable.
- Update the repository-local validator so it validates the final inventory without hardcoding obsolete generic names.

#### G6 — Behavioral Validation And Private Handoff Readiness

- Run structural, metadata, stale-reference, Markdown-link, whitespace, privacy, and secret checks.
- Test representative prompts and inspect whether the intended skills are selected without generic-name ambiguity.
- Create a delivery walkthrough and changelog entry describing the completed specialization and limitations.
- Return to the user-owned Phase 6A private-repository handoff only after the new baseline passes.

### 13.11 Pseudocode / Logic Sequence

1. Read the approved mapping and establish the 17 destination folders.
2. For each destination, gather all approved source entrypoints, references, metadata, and internal links.
3. Extract transferable engineering rules and discard app/web/business-only assumptions.
4. Rewrite the destination around engine-neutral GameDev triggers, workflow, evidence, stop conditions, validation, and handoff.
5. Put shader/rendering methodology in `gamedev-rendering-shaders`, Unity-only implementation details in `gamedev-unity-development`, and reference shared performance rules instead of duplicating full workflows.
6. Validate the destination before deleting any source that feeds it.
7. Rename directories and metadata, then update every internal and documentation reference atomically.
8. Delete only the 7 approved out-of-scope folders and 14 fully migrated superseded folders.
9. Run repository-wide structural and content checks, then correct stale names, broken links, ambiguous descriptions, and app/web residue.
10. Exercise representative GameDev routing scenarios and document manual Unity/editor checks that automation cannot reliably perform.
11. Update task tracking, walkthrough, changelog, and private-handoff readiness with actual results.
12. Stop before any Git, installation, publication, source-repository, or external-system action.

### 13.12 Affected Files

- `skills/**` — final names, frontmatter, procedures, supporting references, and UI metadata.
- `scripts/validate_skills.py` — inventory/name/reference validation if current assumptions require adjustment.
- `README.md`
- `CONTRIBUTING.md`
- `AGENTS.md` — current-project profile only if applicable; universal rules remain generalized.
- `docs/README.md`
- `docs/00_Draft/**` — only references that describe the active skill toolkit rather than reusable neutral templates.
- `docs/06_Reusable_Components/**`
- `docs/08_Tracking/implementation-plan.md`
- `docs/08_Tracking/task.md`
- `docs/07_Walkthrough/` — new specialization walkthrough after implementation.
- `CHANGELOG.md` — dated entry after completed delivery.

### 13.13 Validation Plan

Structural and metadata checks:

- Exactly 17 directories exist directly under `skills/`.
- Every folder name, frontmatter `name`, UI metadata reference, and documented skill name agrees.
- All 17 names are unique and start with `gamedev-`.
- No removed generic skill folder, stale `$skill-name` invocation, or dangling reference remains.
- Every skill passes the repository validator and the applicable official quick validation.
- Every description is at most 240 characters and the combined total is at most 4,000 characters.

Content checks:

- Retained skills have GameDev-specific triggers, evidence, stop conditions, validation, and handoff guidance.
- App-only entities such as bookings, riders, shop owners, dashboards, and payment forms are absent except where explicitly labeled as an out-of-scope routing example.
- Engine-neutral core skills do not assume Unity APIs; Unity-specific details are contained in or explicitly delegated to `gamedev-unity-development`.
- Rendering/shader guidance covers the complete specification in Section 13.7, including HLSL-style code, Unity ShaderLab/Shader Graph, compatibility, variants, GPU cost, and target-platform validation.
- Performance guidance covers the complete specification in Section 13.8 and treats `Update()` and `Destroy()` as context-sensitive lifecycle APIs rather than unconditional violations.
- Documentation, links, whitespace, privacy/secret boundaries, and reusable-template neutrality pass repository checks.

Representative routing checks:

| Prompt | Expected routing |
| --- | --- |
| “My Unity build stutters whenever a group of enemies spawns.” | `gamedev-performance-optimization` with `gamedev-unity-development` for Unity-specific profiling. |
| “Add a pause menu that works with controller navigation and ultrawide displays.” | `gamedev-ui-development`, plus `gamedev-unity-development` when the repository is Unity-based. |
| “Refactor the player controller without changing movement feel.” | `gamedev-refactor`; add engine specialization only when engine details are required. |
| “Fix the failing Android game build pipeline.” | `gamedev-build-pipeline-repair`, plus the applicable engine specialization. |
| “Create a dissolve shader for URP and make it affordable on mid-range Android devices.” | `gamedev-rendering-shaders`, supported by `gamedev-performance-optimization` and `gamedev-unity-development`. |
| “Add a login API for a business dashboard.” | No route inside this GameDev pack; use the friend's app/web skills. |

### 13.14 Final Acceptance Criteria

- [X] The user approves this exact 17-skill inventory and 36-to-17 disposition map before implementation.
- [X] Every final skill name starts with `gamedev-`, is unique, and matches its folder and metadata.
- [X] The final inventory contains exactly 17 skills with no generic-name compatibility aliases.
- [X] Useful GameDev guidance is migrated before any consolidation source is deleted.
- [X] Seven app/web/business-only folders and fourteen superseded folders are removed only as approved.
- [X] The core is engine-neutral, Unity has one explicit specialization, and Unreal remains plan-only.
- [X] `gamedev-rendering-shaders` covers HLSL-style code, ShaderLab, Shader Graph, render-pipeline and graphics-API compatibility, variants, materials, GPU cost, visual correctness, and PC/mobile verification.
- [X] `gamedev-performance-optimization` uses frame-time, CPU/GPU, memory/GC, loading, rendering, physics, input/frame pacing, build, and target-device evidence.
- [X] Unity performance rules discourage costly per-frame work and frequent object churn without falsely prohibiting valid `Update()` or `Destroy()` use.
- [X] Object-pooling recommendations include lifecycle/reset safeguards and are applied only when reuse and measured cost justify them.
- [X] Game UI guidance covers runtime navigation, focus, accessibility, safe areas, aspect ratios, and relevant input methods.
- [X] Save compatibility and migration risks remain covered despite removal of the standalone database-migration skill.
- [X] Online-service work is clearly routed across the GameDev and friend's app/web toolkits rather than duplicated here.
- [X] Descriptions meet the repository's 240-character individual and 4,000-character combined quality targets.
- [X] Validators, references, Markdown links, whitespace, privacy, and stale-name checks pass.
- [X] Representative GameDev and app/web control prompts have distinct static routing owners; installed automatic-routing behavior remains assigned to user evaluation.
- [X] README, documentation index, contribution guidance, task tracking, walkthrough, and changelog accurately describe the completed GameDev toolkit.
- [X] No installed/global skills, source repositories, Git state, GitHub state, licenses, releases, or public visibility are changed by Codex.

---

## 14. CoplayDev Workflow Adaptation And Optional GameDev Unity MCP

**Status:** Track S approved and implemented on 2026-09-03; all MCP milestones remain future-only. Section 14.15 records the current scope and verification.

### 14.1 Feasibility Decision

Both requested tracks are feasible, but they solve different problems and should remain separable:

| Track | Feasibility | Value | Main boundary |
| --- | --- | --- | --- |
| Adapt durable Unity practices into the existing 17 skills | High | Improves planning, implementation, testing, profiling, rendering, and debugging even without MCP | Rewrite guidance for MCP-free use; retain attribution for adapted source material |
| Extend CoplayDev MCP with project-specific C# custom tools | High | Fastest route to live Unity automation | Requires CoplayDev as a runtime dependency and is not a fully independent MCP |
| Build an independent GameDev Unity MCP | Feasible, medium-to-high effort | Full control over names, safety, contracts, and workflow-specific capabilities | Requires a server, Unity Editor package, protocol contract, compatibility testing, and long-term maintenance |
| Copy the complete CoplayDev server and 47-tool surface | Technically possible but not recommended | Broad immediate surface | Excess context, duplicated maintenance, and many capabilities unrelated to the first verified need |
| Make every GameDev skill require MCP | Rejected | None beyond convenience | Breaks current offline/repository-only workflows and makes skill routing depend on external runtime state |

The recommended sequence is to strengthen the MCP-free skills first, then prove a small read-only Unity MCP before adding editor mutations. The current toolkit remains useful when no MCP is installed or connected.

### 14.2 Request Understanding And Goal

Use selected practices from CoplayDev's `unity-mcp` skill and workflow documentation to improve this toolkit, while designing an optional, independently namespaced MCP that gives an agent live evidence and carefully bounded Unity Editor actions.

The intended outcome is not a clone of CoplayDev's entire product. It is a focused companion to this GameDev workflow toolkit:

- skills decide why, when, and how to approach a task;
- the MCP reports live Unity/project state and performs approved editor operations;
- repository inspection, command-line checks, and manual Unity steps remain valid fallbacks;
- subjective game feel, visual quality, audio quality, and target-device behavior remain human-verified where automation cannot prove them.

### 14.3 Evidence And Source Boundaries

- [OpenAI skill guidance](https://learn.chatgpt.com/docs/build-skills) treats skills as reusable instructions, references, assets, and optional scripts. Skills can therefore remain instruction-only and conditionally use tools when those tools are available.
- [OpenAI MCP guidance](https://learn.chatgpt.com/docs/extend/mcp?surface=cli) supports local STDIO and Streamable HTTP servers, project-scoped configuration, server instructions, and tool allow/deny controls.
- [CoplayDev `unity-mcp`](https://github.com/CoplayDev/unity-mcp) uses a Unity-side C# package plus a separate server to expose editor resources and tools.
- CoplayDev's [custom-tool guide](https://github.com/CoplayDev/unity-mcp/blob/beta/website/docs/guides/custom-tools.md) demonstrates project-scoped Unity tools discovered from C# attributes.
- CoplayDev's [tool-group guide](https://github.com/CoplayDev/unity-mcp/blob/beta/website/docs/guides/tool-groups.md) shows why large tool catalogs should expose only relevant groups.
- CoplayDev publishes its work under the [MIT License](https://github.com/CoplayDev/unity-mcp/blob/main/LICENSE). Any copied or substantially adapted code or documentation must retain its copyright and permission notice.

CoplayDev remains read-only. Studying its architecture does not authorize modifying its repository, installing its package, or importing its source into this repository. If implementation copies or substantially adapts material, add a complete third-party notice before that material is introduced.

### 14.4 Recommended Architecture Decision

Keep two independently usable products:

```text
GameDev Workflow Toolkit (this repository)
  └─ 17 MCP-optional skills
       ├─ repository/CLI/manual workflow
       └─ conditional calls when a compatible MCP is present

Optional GameDev Unity MCP (recommended separate private repository)
  ├─ MCP server
  ├─ versioned server/editor contract
  ├─ Unity Editor package
  └─ integration and compatibility tests
```

Recommended runtime flow:

```text
Codex or another MCP client
        │  MCP over STDIO first; HTTP may be added later
        ▼
GameDev Unity MCP server
        │  authenticated loopback, versioned JSON messages
        ▼
GameDev Unity Editor package
        │  Unity Editor APIs, Undo, tests, profiler, screenshots
        ▼
The currently selected Unity project and editor instance
```

The MCP runtime should live in a separate private repository such as `gamedev-unity-mcp`. This keeps runtime dependencies, package releases, compatibility policy, and MIT-derived notices separate from the privately adapted skill collection. Creating that repository, configuring Git, or publishing packages remains user-owned and separately authorized.

Alternative approaches considered:

1. **CoplayDev custom-tool extension:** fastest prototype and lowest bridge effort, but depends on CoplayDev at runtime.
2. **Same-repository monorepo:** keeps versions together, but mixes the exact-17 skill validator, private source permissions, runtime dependencies, and release lifecycles.
3. **Full CoplayDev fork:** immediately broad, but creates the largest maintenance and attribution burden.

The recommended independent MCP may use CoplayDev as a behavioral and architectural reference. Reusing source code is optional and must be decided file-by-file under its MIT terms.

### 14.5 Skill-Strengthening Track

Do not import CoplayDev's `unity-mcp-orchestrator` as an eighteenth skill because its tool calls require that MCP and would duplicate `gamedev-unity-development`. Distill only durable decisions into the existing routed skills.

| Existing skill | Planned strengthening |
| --- | --- |
| `gamedev-unity-development` | Add capability-first project/editor context, compilation/domain-reload readiness, stable object/asset targeting, post-change console checks, visual verification, multi-instance awareness, and an MCP-present/MCP-absent decision path. |
| `gamedev-test-creation` | Add Unity EditMode/PlayMode async-job principles, cleanup, timeout, pagination/result retrieval, and honest manual fallback without copying MCP call schemas. |
| `gamedev-bug-investigation` | Add editor-state, console, hierarchy/scene, screenshot, domain-reload, instance-selection, and stale-state evidence patterns. |
| `gamedev-performance-optimization` | Add optional profiler-session, counter, memory-snapshot, rendering-stat, and target-build evidence workflows while preserving manual and existing-profiler routes. |
| `gamedev-rendering-shaders` | Add optional live render-pipeline capability checks, frame/render inspection, material/shader verification, screenshots, and graphics-stat evidence. |
| `gamedev-workflow-toolkit` | Route Unity work based on verified capability availability; never assume an MCP because a skill mentions it. |

Planned content rules:

- Keep MCP command names and parameter schemas out of general skill entrypoints.
- Put optional editor-automation guidance in one progressive reference under `gamedev-unity-development` and link other skills to the owning Unity specialization instead of duplicating it.
- Treat upstream examples as templates, not guaranteed Unity-version truth.
- Detect engine version, render pipeline, input system, packages, build target, and active editor readiness before engine-specific operations.
- After script or serialized changes, wait for actual compilation/domain-reload completion and inspect real errors before continuing.
- Use screenshots and live editor evidence as additional verification, not proof of subjective quality.
- Preserve exact manual steps whenever the MCP is absent, unavailable, or unable to prove the result.

### 14.6 Independent MCP Scope

#### Read-Only MVP

Start with a deliberately small surface that proves the bridge and produces evidence without mutating a project:

**Resources**

- `gamedev://unity/project-context` — project root identity, Unity version, render pipeline, input configuration, relevant packages, active build target, and supported MCP contract version.
- `gamedev://unity/editor-state` — active instance, active scene, play/edit mode, compilation, domain reload, and readiness/blocking reasons.
- `gamedev://unity/scene-summary` — bounded hierarchy/component summary with pagination, not a full unbounded scene dump.
- `gamedev://unity/capabilities` — available tool groups, optional packages, and supported features for the selected instance.

**Tools**

- `gamedev_unity_read_console` — filtered, bounded console evidence with optional stack traces and redaction.
- `gamedev_unity_validate_project` — non-mutating checks for missing references, compilation state, build-scene/config clues, and project-specific validators.
- `gamedev_unity_run_tests` plus job-status retrieval — asynchronous EditMode/PlayMode execution with timeout and cancellation behavior.
- `gamedev_unity_capture_view` — bounded Game/Scene view capture for visual inspection, clearly distinguished from human approval.

Every name uses a `gamedev_unity_` prefix so this MCP can coexist with CoplayDev's server without ambiguous tool names.

#### Later Opt-In Groups

Only after the read-only MVP passes:

- `testing` — richer filtering, result artifacts, and batch/build smoke tests;
- `profiling` — profiler counters, bounded captures, memory snapshots, and rendering statistics;
- `rendering` — pipeline/material/shader inspection and safe editor-assisted verification;
- `build` — approved build validation and asynchronous job monitoring;
- `content-write` — scene, GameObject, component, prefab, material, or asset mutations through Unity APIs and Undo.

The `content-write` group remains disabled by default. Arbitrary shell execution, arbitrary C# execution, package installation/removal, external asset-generation providers, destructive deletion, and remote hosting are excluded from the MVP.

### 14.7 Safety And Reliability Requirements

- Bind the editor bridge to loopback only for the private local MVP.
- Use an ephemeral session token or equivalent handshake; never commit credentials.
- Canonicalize and allowlist project-relative paths before any file or asset operation.
- Require explicit instance selection when more than one Unity Editor is connected.
- Version the server/editor message contract and reject incompatible versions with a clear error.
- Bound collection sizes, console output, screenshots, profiler captures, and job history.
- Model compilation, domain reload, tests, builds, and profiling as readiness checks or asynchronous jobs rather than long blocking calls.
- Return structured success/error data, affected paths or object identifiers, verification evidence, and recovery guidance.
- Integrate Unity Undo for supported editor mutations and report when an action cannot be undone.
- Never claim Unity state, visual correctness, game feel, hardware behavior, or test success without returned evidence.
- Keep high-impact tools outside the default group and rely on both client approval and server-side validation.
- Redact secrets, private paths where unnecessary, player data, and large raw save/content payloads from logs and tool responses.

### 14.8 Implementation Phases

#### U0 — Approval, Ownership, And Source Inventory

1. Approve this exact two-track plan.
2. Confirm that Track S (skill strengthening) may proceed independently of MCP runtime decisions.
3. Keep CoplayDev read-only and inventory the exact upstream files used as references.
4. Add third-party attribution before copying or substantially adapting any source.
5. Keep Git, repository creation, installation, and publication user-owned.

**Exit:** scope, source list, implementation ownership, and license obligations are recorded.

#### U1 — MCP-Free Skill Strengthening

1. Add one focused Unity editor-workflow reference.
2. Update the six mapped skills and their closest checklists only where the new guidance changes decisions.
3. Add explicit MCP-present, CLI/repository, and manual fallback modes.
4. Validate all 17 skills and representative routing prompts.

**Exit:** every strengthened workflow remains usable with no MCP configured.

#### U2 — Architecture Spike In An Isolated Workspace

1. Select the runtime stack only after approval; Python/FastMCP plus a C# Editor package is the initial candidate because it matches the proven split architecture, but this introduces dependencies and is not pre-authorized.
2. Prove one Unity instance can connect, report versioned editor state, survive a domain reload, and reconnect safely.
3. Compare an independent bridge with a CoplayDev custom-tool extension for effort and maintenance.
4. Record measured setup complexity, failure modes, dependency footprint, and compatibility limits.

**Exit:** a go/no-go decision chooses independent MCP, upstream-backed extension, or skills-only continuation. Spike code is not promoted automatically.

#### U3 — Read-Only MCP MVP

1. Establish server, Unity package, and shared contract structure in the approved runtime repository.
2. Implement capability discovery, project context, editor state, bounded scene summary, console reading, validation, async tests, and view capture.
3. Add instance routing, handshake, timeouts, pagination, redaction, and structured errors.
4. Document project-scoped Codex configuration without modifying a user's installed configuration.

**Exit:** the MCP supplies trustworthy evidence for one approved Unity compatibility baseline without altering project content.

#### U4 — Skill/MCP Conditional Integration

1. Teach `gamedev-unity-development` to discover capabilities before tool use.
2. Route each workflow to MCP, repository/CLI, or manual mode according to actual availability.
3. Keep MCP optional in skill metadata; do not declare a hard dependency that hides or disables the skill when the server is absent.
4. Test the same representative prompts with MCP absent, connected, busy, stale, and incompatible.

**Exit:** tool availability improves execution but never changes the fundamental acceptance criteria or permission boundaries.

#### U5 — Safe Mutation Pilot

1. Add one narrow, reversible editor mutation only after separate approval.
2. Use stable identifiers, project bounds, validation, Unity Undo, compilation/readiness waits, and post-action evidence.
3. Keep broad scene/content tools disabled until real workflows justify them.

**Exit:** the pilot demonstrates reliable mutation and recovery without arbitrary code execution or silent serialized-asset damage.

#### U6 — Compatibility, Security, Documentation, And Private Handoff

1. Run server unit, contract, Unity EditMode, integration, failure-path, and manual editor checks.
2. Review tool descriptions, default groups, approvals, path handling, logs, and response-size limits.
3. Add setup, architecture, troubleshooting, compatibility, and uninstall/disable guidance.
4. Create the configured walkthrough and changelog entry for actual completed behavior.
5. Stop before any public release, package registry, remote hosting, or installed configuration change.

**Exit:** private MVP behavior and limitations are evidence-backed, documented, and reversible.

### 14.9 Plain-English Pseudocode

1. Read the game project's rules and determine whether it is a supported Unity project.
2. Load the relevant GameDev skill and identify the primary task and required evidence.
3. Check whether the namespaced GameDev Unity MCP is actually available.
4. If unavailable, follow repository, command-line, and manual Unity instructions without failing the skill.
5. If available, list capabilities and select the intended Unity instance explicitly.
6. Read project context and editor readiness before invoking task-specific tools.
7. Stop or wait when Unity is compiling, reloading, disconnected, incompatible, or routed to the wrong project.
8. Run the smallest read or approved action needed by the workflow.
9. For an asynchronous operation, return a job identifier and poll with bounded waits until success, failure, cancellation, or timeout.
10. After any mutation, wait for Unity readiness, inspect errors, verify the affected object/asset, and capture suitable evidence.
11. Hand visual, audio, interaction-feel, and target-device judgment to the user with exact steps.
12. Report what was observed, what changed, what passed, what remains pending, and how to recover.

### 14.10 Planned Files And Repository Boundaries

**Current repository — Track S**

- `skills/gamedev-unity-development/SKILL.md`
- `skills/gamedev-unity-development/references/unity-checklist.md`
- `skills/gamedev-unity-development/references/unity-editor-workflows.md` — proposed new progressive reference
- `skills/gamedev-workflow-toolkit/references/routing-guide.md`
- `skills/gamedev-test-creation/**`
- `skills/gamedev-bug-investigation/**`
- `skills/gamedev-performance-optimization/**`
- `skills/gamedev-rendering-shaders/**`
- `docs/provenance.md`
- `THIRD_PARTY_NOTICES.md` — only when CoplayDev material is copied or substantially adapted
- `README.md`, `CONTRIBUTING.md`, tracking, walkthrough, and changelog files as required by actual delivered behavior
- `scripts/validate-skills.ps1` only if new reference or validation invariants require it

**Recommended separate private runtime repository — Track M**

- `server/` — MCP host and tool/resource registration
- `unity-package/` — Unity Editor package and handlers
- `contracts/` — versioned server/editor message schemas
- `tests/server/`, `tests/contract/`, and a minimal Unity test project
- architecture, setup, compatibility, troubleshooting, security, and third-party notice documents

No runtime repository, dependency, Unity package, external configuration, or installed skill copy is created by approval of this planning section alone.

### 14.11 Verification Plan

**Skill track**

- All 17 skill folders pass the repository validator and official quick validation.
- Folder/frontmatter/UI names, description budgets, Markdown links, and optional references remain valid.
- Representative Unity prompts route correctly with MCP absent and present.
- No general skill contains a mandatory CoplayDev or MCP dependency.
- Attribution and MIT notices are complete for any adapted material.

**MCP server and contract**

- Unit tests cover validation, path bounds, response schemas, pagination, redaction, timeouts, instance selection, and error mapping.
- Contract tests prove supported and unsupported version negotiation.
- Transport tests cover startup, disconnect, reconnect, stale sessions, domain reload, and multiple instances.
- Tool catalog tests enforce the `gamedev_unity_` namespace and read-only default group.

**Unity package and integration**

- EditMode tests cover discovery, handlers, serialization, project bounds, Undo where applicable, and structured failures.
- A controlled Unity test project proves editor state, console reads, validation, async test completion, screenshots, and reconnect behavior.
- Manual tests record exact Unity version, operating system, project, scene, action, expected result, and status.
- Player-build, device, visual, audio, and interaction-feel checks remain pending until actually performed.

### 14.12 Risks, Recovery, And Deferred Scope

| Risk | Mitigation / recovery |
| --- | --- |
| Maintaining compatibility across Unity versions | Declare a narrow first compatibility baseline, use capability discovery, version contracts, and expand only from tested evidence |
| Domain reload or editor compilation breaks the bridge | Use readiness states, reconnect handshake, bounded retry, and idempotent read operations |
| Wrong Unity project or instance receives an action | Require explicit selection when ambiguous and return project identity with every operation |
| Tool catalog becomes too large or ambiguous | Namespaced tools, read-only core, opt-in groups, concise descriptions, and usage-based additions |
| Serialized asset damage | Unity APIs, stable identifiers, project bounds, backups/Undo where supported, and no content-write tools in MVP |
| Copied-source licensing becomes unclear | File-level source inventory, retained MIT notice, third-party notice, and private-only boundary |
| MCP becomes a duplicate of shell/file capabilities | Add only live editor state or operations that materially improve reliability; keep ordinary code editing in existing workflows |
| Skill quality degrades when MCP is unavailable | Test explicit fallback behavior and prohibit hard MCP dependencies in the existing skills |

Deferred until separately justified and approved: Unreal or multi-engine bridges, remote hosting, OAuth, asset-generation providers, arbitrary code execution, package installation/removal, destructive content tools, public registry publication, installers/updaters, and broad 47-tool parity.

### 14.13 Final Acceptance Criteria

- [X] User approved Track S skill strengthening and requested Gemini/Claude portability; MCP implementation remains unapproved.
- [X] Track S completed without creating, installing, or connecting an MCP server.
- [ ] Existing skills remain functional and truthful when no MCP tools are available.
- [X] No eighteenth skill is added merely to copy CoplayDev's MCP-specific orchestrator.
- [X] Adapted guidance is concise, routed through existing skill owners, and does not reproduce an exhaustive upstream manual.
- [X] CoplayDev source usage is inventoried and all required MIT copyright and permission notices are retained.
- [ ] The independent MCP uses a distinct server identity and `gamedev_unity_` tool namespace.
- [ ] The first MCP milestone is read-only and excludes arbitrary code, destructive operations, package changes, and external providers.
- [ ] The MCP validates project scope, selected instance, editor readiness, message version, input bounds, and response size on the server side.
- [ ] Long-running Unity operations use observable async jobs with success, failure, cancellation, and timeout states.
- [ ] Skills discover capabilities before calls and provide repository/CLI/manual fallbacks.
- [ ] Any later content mutation requires separate approval, is narrow and reversible where possible, and produces post-action evidence.
- [ ] Automated results, editor/manual results, limitations, and compatibility coverage are reported without simulated passes.
- [ ] Git, new-repository creation, installed configuration, package publication, remote hosting, public visibility, and licensing changes remain separately authorized.

### 14.14 Approval Boundary And Next Decision

Approval of Section 14 authorizes repository-local Track S skill adaptation and its directly related documentation/validation only. It does not by itself authorize:

- installing CoplayDev's package or any new framework/dependency;
- creating the separate runtime repository;
- implementing the architecture spike or MCP runtime;
- editing Codex MCP configuration;
- adding Unity packages to a real game;
- performing Git/GitHub actions; or
- publishing or licensing either repository.

The user's latest clarification defers U2 and all MCP work until a fresh explicit request. If reopened, approve the location/dependencies before the spike and obtain a new go/no-go decision before U3. No automatic transition follows Track S.

### 14.15 Current Skills-Only Delivery — 2026-09-03

The user approved Track S, added Gemini/Claude portability, and explicitly kept the MCP as future planning. The renamed working repository is `D:/OtherProjects/gamedev-toolkit`. No game workspace or separate MCP repository was modified.

Implementation retains the 17 skills and adds one progressive Unity workflow reference, portable source notices, task-specific evidence checklist improvements, plain-name routing, and [client setup guidance](../skill-portability.md). The feature-implementation entrypoint received only a portability adjustment to its performance-skill reference. No client-specific duplicate skill pack or installer was added.

Current verification:

- [X] Repository validator passes: 17 unique names and 3,299 description characters.
- [X] All 17 skills pass the official quick validator.
- [X] Validator recognizes plain names and Codex dollar-prefixed references.
- [X] Pure-skill/manual paths are explicitly documented; no hard MCP dependency was introduced.
- [ ] Actual Codex/Claude Code/Gemini CLI discovery and routing matrix: pending user verification.
- [ ] Kumpuni prototype, Unity tests, visuals, and device checks: pending actual game work.

The MCP resource/tool names and U2–U6 architecture above are proposals only. In particular, running tests, recording profiler data, or capturing images may execute project code or write artifacts; those future capabilities must not be classified as side-effect-free merely because they do not intentionally edit source.
