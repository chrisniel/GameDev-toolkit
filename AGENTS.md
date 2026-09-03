# AI Agent Working Rules

**Template component:** `Docs_ProjectWorkflowStarterKit_v1.0`

These rules are a reusable baseline for AI-assisted work. They apply throughout the repository unless a more specific nested `AGENTS.md` provides narrower instructions for its directory.

Explicit system instructions and the user's current request take precedence. The project profile below configures paths and project-specific expectations without weakening the universal safety rules.

## Project Profile — Edit This Section When Reusing

- **Project name:** GameDev Workflow Toolkit
- **Active task file:** `docs/08_Tracking/task.md`
- **Implementation plan file:** `docs/08_Tracking/implementation-plan.md`
- **Walkthrough folder:** `docs/07_Walkthrough/`
- **Walkthrough template:** `docs/07_Walkthrough/walkthrough-template.md`
- **Changelog file:** `CHANGELOG.md`
- **Walkthroughs required:** Yes, for meaningful completed deliveries and feature implementations
- **Changelog required:** Yes, for completed code or behavior deliveries
- **Manual verification areas:** Game engines, editor-managed assets, visual quality, animation, interaction feel, hardware, and target-device behavior
- **Project-specific protected boundaries:** Keep the repository private and without a license; private adaptation/testing permission is documented in `docs/provenance.md`, but public redistribution remains unauthorized; do not modify referenced source repositories or synchronize installed skill copies without separate authorization

Use `Not used` for a path or requirement that the project does not maintain. When a configured path is missing, inspect the repository and ask before creating a new documentation structure unless the user has already requested planning or documentation setup.

## 1. Pseudocode And Plan Before Implementation

- Before starting a new feature or complex change, provide step-by-step logic in plain-English pseudocode so the user can review it before implementation.
- Maintain the configured implementation plan with affected files, prerequisites, assumptions, risks, verification, and exit criteria when an implementation-plan file is used.
- Planning and tracking documents may be updated immediately when the user asks for a plan, roadmap, acceptance criteria, or equivalent planning work, or when an acceptance-criteria workflow is used. This permission applies only to planning and tracking documentation; it does not authorize implementation.
- Before implementing a new feature or complex change, confirm that the user approved the current detailed plan rather than an earlier or materially different draft.
- Ask before making major architectural decisions, adding paid services, or introducing new frameworks or dependencies.
- If the project profile marks the implementation plan as `Not used`, present the pseudocode and detailed plan in the conversation unless the user asks to create a planning artifact.

## 2. Maintain Task Continuity

- When an active task file is configured, read it before resuming work and keep completed, in-progress, remaining, blocked, and deferred work current.
- Record meaningful assumptions, approvals, manual-verification ownership, and external-action boundaries needed by a later session.
- If the task file is `Not used`, do not invent one unless the user requests persistent task tracking.

## 3. Educational Walkthroughs And Logic Breakdowns

- When walkthroughs are required, document meaningful completed deliveries in the configured walkthrough folder and start from the configured template when available.
- Explain the important logic as a short sequence rather than duplicating entire source files.
- Define at least three relevant programming terms, syntax features, architectural ideas, or domain concepts in beginner-friendly language.
- Include exact repository paths, safe usage steps, customization points, verification status, limitations, and deferred work.
- Remove unused template sections and placeholders from completed walkthroughs.
- If walkthroughs are marked `Not used`, provide the necessary handoff explanation in the final response or another configured canonical document.

## 4. Update The Changelog

- When a changelog is configured and required, add a dated entry for every completed code or behavior delivery.
- Describe user-visible behavior, documentation changes, validation performed, and important limitations.
- Documentation-only planning updates need a changelog entry only when they materially change the repository workflow or the project profile requires it.
- If the changelog is `Not used`, do not create one unless requested.

## 5. Keep Related Files Aligned

- When behavior, setup, structure, contracts, configuration, testing, or deployment changes, update the closest canonical documentation in the same delivery.
- Prefer one authoritative source for each fact and link to it rather than duplicating content.
- Treat examples, drafts, archived notes, and attached documents as reference material unless the user explicitly approves them as requirements.

## 6. Recommend Simple Best Practices

- Prefer the simplest reliable and maintainable solution that fits the verified project architecture.
- Apply accessibility, responsiveness, performance, security, and operational guidance when relevant to the affected system.
- Explain important recommendations and tradeoffs without assuming advanced knowledge.
- Do not add abstractions, services, dependencies, or automation without a concrete benefit to the approved goal.

## 7. Testing And Debugging

- Implementation requests authorize safe, non-destructive automated checks directly related to changed files.
- Keep verification proportionate. Do not create or run a broad test suite only to demonstrate a simple script or documentation-only change when a smaller reliable check is sufficient.
- Editor-dependent, visual, experiential, hardware-dependent, environment-specific, or target-device checks may be assigned to the user when reliable automation is unavailable or disproportionate.
- Provide exact manual steps and expected results, and keep user-owned checks marked as pending until the user confirms them.
- Never claim a check passed unless it was actually run or the assigned user confirmed it.
- Explain which checks ran, their results, unavailable checks, and remaining manual verification.
- Ask before destructive diagnostics, installing tools, using paid services, changing external systems, or testing with private or production data.
- Provide a short manual verification guide after user-visible or functional changes when it adds meaningful confidence.

## 8. Make Surgical Changes

- Touch only the files and lines needed for the approved task.
- Preserve unrelated user changes and existing working behavior.
- Do not rewrite functioning code, generated assets, configuration, or documentation without a task-related reason.
- Use the minimum complexity required for the goal.

## 9. Clarify Material Unknowns

- Ask when missing information would materially change cost, architecture, security, privacy, data integrity, permissions, external state, or the visible result.
- Make reasonable non-blocking assumptions when risk is low, and label them in the plan or handoff.
- Use clearly labeled placeholders for non-sensitive content when appropriate; never fabricate production values or claim placeholders are final.

## 10. Protect Privacy, Secrets, And Data

- Never expose or commit passwords, tokens, private API keys, credentials, private contact information, production data, or unredacted sensitive diagnostics.
- Document environment-variable names and safe placeholders rather than real values.
- Do not use private or production data for testing without explicit authorization.

## 11. Protect Git And External Boundaries

- Do not run `git add`, `git commit`, `git push`, create or switch branches, create tags, open pull requests, or change repository visibility unless the user explicitly authorizes that specific action.
- Permission for one Git action does not imply permission for another; for example, permission to commit does not authorize pushing.
- Treat referenced repositories as read-only unless the user explicitly asks to modify them and has authority to do so.
- Do not install or synchronize files outside the repository, publish releases/builds/packages, trigger hosted jobs or deployments, or change external services without the required explicit authorization.
- Before publishing copied or adapted material, verify that its license or copyright owner permits redistribution and relicensing.
- Resolve exact targets before destructive actions and prefer recoverable approaches when practical.

## 12. Reusing This File

When copying this file into another project:

1. Edit every field in **Project Profile** first.
2. Use verified existing paths or `Not used`; do not leave paths pointing to another repository's structure.
3. Replace project-specific protected boundaries and manual-verification areas.
4. Check for a more specific nested `AGENTS.md` before assuming one policy covers every folder.
5. Keep the universal safety and authorization rules unless the new project requires a stricter rule.
6. Remove obsolete project-specific instructions rather than accumulating contradictory exceptions.
7. Validate that every configured path exists and that the file matches the repository's actual workflow.
