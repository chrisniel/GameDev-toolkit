# Project Workflow Starter Kit — Walkthrough

**Template version:** `Docs_ProjectWorkflowStarterKit_v1.0`

**Purpose:** Explain how to reuse the repository's AI working rules and documentation templates without inheriting incorrect folder paths or project-specific assumptions.

**Audience:** Maintainers and developers starting or standardizing a software repository.

**Status:** Implemented and validated in the GameDev Workflow Toolkit repository; cross-project user evaluation pending.

**Last updated:** 2026-08-31

## What Was Delivered

- Generalized the root `AGENTS.md` into universal rules plus one editable Project Profile.
- Generalized task, implementation-plan, and walkthrough templates for numbered, unnumbered, root-level, or unused documentation systems.
- Preserved strict planning, privacy, Git, dependency, destructive-action, external-system, and publication boundaries.
- Added copy/configuration instructions and a versioned reusable component card.
- Kept this repository's real `07_Walkthrough` and `08_Tracking` paths configured without making them universal defaults.

## Files Changed

- `AGENTS.md` — reusable rules and the current repository's Project Profile.
- `docs/00_Draft/task-template.md` — path-neutral continuity and permission tracking.
- `docs/00_Draft/implementation-plan-template.md` — path-neutral scope, acceptance criteria, pseudocode, verification, recovery, and handoff.
- `docs/07_Walkthrough/walkthrough-template.md` — path-neutral educational delivery template.
- `docs/00_Draft/project-workflow-starter-kit.md` — component card, examples, limitations, and reuse steps.
- `docs/00_Draft/README.md` — concise copy-and-configure sequence.
- `README.md` and `docs/README.md` — current-project entry points to the reusable kit.

## How The Logic Works

1. Universal rules define planning, safety, verification, documentation quality, and permission boundaries that apply across projects.
2. The Project Profile supplies the current repository's actual task, plan, walkthrough, and changelog locations.
3. A copied kit is configured by editing the Project Profile before implementation begins.
4. A value of `Not used` disables an optional persistent document without weakening conversation-based planning, verification reporting, or safety rules.
5. Blank templates refer to configured paths rather than assuming particular folder numbers.
6. Nested repositories or specialized areas may add stricter local `AGENTS.md` rules without silently weakening the root safety baseline.

## Key Concepts

- **Project Profile** — the single editable section that connects reusable rules to a repository's real paths, manual checks, and protected boundaries.
- **Universal rule** — a policy that remains useful across frameworks and repository layouts, such as protecting secrets or requiring approval before pushing.
- **Canonical document** — the one authoritative file for a type of information, which prevents duplicated instructions from drifting apart.
- **Nested scope** — a subdirectory with its own `AGENTS.md` that can provide more specific instructions for files below it.

## How To Use It

1. Copy the root `AGENTS.md` to the new repository.
2. Copy the three blank templates to the folders that project will actually maintain.
3. Edit every Project Profile field and use `Not used` for optional systems.
4. Replace inherited project-specific boundaries and manual-verification areas.
5. Confirm every configured path exists and review the permission rules with the user.
6. Use the blank task and plan copies for new work; do not copy this repository's populated tracking history.

## Safe Customization

- Change Project Profile paths without rewriting universal rules.
- Add stricter project-specific or nested rules when the domain requires them.
- Disable walkthroughs or changelogs with `Not used` for genuinely lightweight repositories.
- Keep complex-plan approval, secrets, Git actions, external systems, destructive actions, and publication permission-gated.
- Remove obsolete inherited profile values instead of accumulating contradictory exceptions.

## Verification

### Automated / Repository Checks

- [X] Every configured current-project path exists.
- [X] Universal `AGENTS.md` rules contain no fixed folder number, framework, engine, repository, or client identity.
- [X] The three reusable templates contain no current-project folder paths or identities.
- [X] Planning, dependency, destructive-diagnostic, privacy, Git, external-system, and licensing boundaries remain present.
- [X] The 36-skill structural validator still passes.
- [X] Relative-link validation passes across all 92 Markdown files.
- [X] Repository formatting and trailing-whitespace validation passes.

### Manual / User-Owned Checks

- [ ] Copy the kit into a new or sample repository and confirm editing only the Project Profile is sufficient — `Pending user verification`.
- [ ] Examine and test the newly created or adapted skills in representative projects — `Pending user verification`.

## Limitations And Deferred Work

- The starter kit cannot discover the preferred documentation topology without inspecting each new repository.
- `Not used` disables persistent artifacts, not safety rules or the need to communicate complex plans and verification results.
- Installed-skill synchronization and public distribution remain separate, unauthorized work.

## Related Documentation

- `docs/00_Draft/project-workflow-starter-kit.md`
- `docs/08_Tracking/implementation-plan.md`
- `docs/08_Tracking/task.md`
- `CHANGELOG.md`
