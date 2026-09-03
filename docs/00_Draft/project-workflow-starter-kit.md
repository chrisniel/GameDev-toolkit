# Project Workflow Starter Kit

## Component Card

- **Component name:** `Docs_ProjectWorkflowStarterKit_v1.0`
- **Category:** Documentation / AI workflow rules
- **Purpose:** Provide a reusable planning, continuity, verification, documentation, and permission baseline for AI-assisted software projects.
- **Best used when:** Starting a repository or standardizing an existing project's AI workflow without forcing one documentation folder layout.
- **Inputs needed:** Verified project paths, documentation requirements, manual-verification domains, protected boundaries, and approval preferences.
- **Output produced:** One configured root `AGENTS.md` plus optional task, implementation-plan, and walkthrough documents.
- **Customization points:** Project profile paths, `Not used` features, manual verification, project-specific boundaries, and optional stricter nested rules.
- **Dependencies:** None. Markdown support is sufficient.
- **Limitations:** It does not create project architecture, infer commands, install skills, enforce rules outside an AI agent, or replace project-specific security/compliance policies.
- **Version:** v1.0
- **Test/validation:** Current-project profile paths, universal-rule neutrality, template neutrality, and safety-rule preservation passed in this repository. Cross-project copy/use remains pending user evaluation.
- **Notes:** Keep the universal safety core stable; place repository-specific settings in the Project Profile.

## Files In The Kit

- `/AGENTS.md` — active reusable rules and editable Project Profile.
- `task-template.md` — continuity, verification, approvals, and permissions.
- `implementation-plan-template.md` — scope, acceptance criteria, pseudocode, phases, verification, and recovery.
- `walkthrough-template.md` — beginner-friendly completed-delivery explanation and handoff.

## Copy And Configure

1. Inspect the new repository before choosing documentation paths.
2. Copy `AGENTS.md` to the repository root.
3. Place copies of the blank templates where the new project will maintain them.
4. Edit the Project Profile to point to the chosen files and folders.
5. Use `Not used` for optional systems the project does not need.
6. Remove project-specific profile values inherited from the source repository.
7. Confirm nested `AGENTS.md` files do not conflict with the root baseline.
8. Validate all configured paths and review the permission boundaries with the user.

## Example Project Profiles

### Numbered Documentation

```markdown
- **Active task file:** `docs/08_Tracking/task.md`
- **Implementation plan file:** `docs/08_Tracking/implementation-plan.md`
- **Walkthrough folder:** `docs/07_Walkthrough/`
- **Walkthrough template:** `docs/07_Walkthrough/walkthrough-template.md`
- **Changelog file:** `CHANGELOG.md`
```

### Unnumbered Documentation

```markdown
- **Active task file:** `docs/tracking/task.md`
- **Implementation plan file:** `docs/planning/implementation-plan.md`
- **Walkthrough folder:** `docs/walkthroughs/`
- **Walkthrough template:** `docs/templates/walkthrough.md`
- **Changelog file:** `CHANGELOG.md`
```

### Lightweight Repository

```markdown
- **Active task file:** `Not used`
- **Implementation plan file:** `Not used`
- **Walkthrough folder:** `Not used`
- **Walkthrough template:** `Not used`
- **Changelog file:** `Not used`
```

In a lightweight repository, the agent still presents complex plans for approval in the conversation and still reports verification and permission boundaries in its final response.

## Promotion And Versioning

- Keep v1.0 until real reuse reveals a necessary change.
- Record observed friction instead of adding speculative rules.
- Make backward-incompatible profile-field changes in a new major version.
- Add optional fields only when repeated project use demonstrates their value.
