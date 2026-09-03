# Implementation Plan — [Feature / Fix / Refactor / Delivery Name]

**Template version:** `Docs_ProjectWorkflowStarterKit_v1.0`

**Status:** [Draft / Awaiting approval / Approved / In progress / Verification / Complete / Blocked]

**Request source:** [User request, issue, report, research, or dated feedback]

**Scope mode:** [New feature / Surgical fix / Refactor / Documentation / Investigation] — [Short boundary statement]

**Related task file:** [Configured path / Not used]

**Walkthrough destination:** [Configured folder / Not used]

Copy this file to the **Implementation plan file** configured in the project's `AGENTS.md`. Replace placeholders and remove sections that do not apply; do not invent architecture, APIs, data, commands, or permissions to fill an optional section.

---

## 1. Request Understanding

[Restate the requested outcome in plain language.]

### Deliverables

1. [Observable deliverable]
2. [Observable deliverable]
3. [Documentation or handoff deliverable]

### Boundary Note

[State what this plan does not authorize or change.]

---

## 2. Actor And Goal

- **Primary actor/user:** [Person, role, system, maintainer, or operator]
- **Goal:** [Outcome and why it matters]
- **Success signal:** [Observable evidence that the goal was achieved]

---

## 3. Evidence And Current Findings

| Evidence / Observation | Verified Interpretation |
| --- | --- |
| [File, log, behavior, report, or repository fact] | [What it demonstrates without guessing] |

---

## 4. Affected Areas

Include only relevant areas:

- **User interface / client:** [Pages, screens, components, input, state]
- **Backend / services:** [Routes, services, jobs, integrations]
- **Data / storage:** [Schemas, files, assets, migrations, ownership]
- **Authentication / permissions:** [Roles, ownership, trusted enforcement point]
- **Configuration / deployment:** [Environment, build, runtime, infrastructure]
- **Tests / verification:** [Existing checks and manual evidence]
- **Documentation:** [Canonical documents to update]
- **Out of scope:** [Protected areas]

---

## 5. Requirements, Assumptions, And Questions

### Confirmed Requirements

- [Specific requirement]
- [Specific requirement]

### Working Assumptions

- [Low-risk assumption and why it is reasonable]

### Open Questions

- [Blocking question, or write `None`]

---

## 6. Functional Requirements And Acceptance Criteria

### FR-1 — [Behavior / Capability]

- [Specific rule]
- [Success behavior]
- [Failure, cancellation, or recovery behavior]

### Final Pass / Fail Criteria

- [ ] [Observable criterion]
- [ ] [Observable criterion]
- [ ] Existing behavior listed for preservation remains unchanged.
- [ ] Required documentation and verification evidence are complete.

---

## 7. Non-Functional Requirements

Include only relevant requirements:

- **Security and privacy:** [Requirement]
- **Reliability and recovery:** [Requirement]
- **Performance and resource use:** [Requirement]
- **Accessibility and responsiveness:** [Requirement]
- **Maintainability:** [Requirement]
- **Compatibility:** [Platforms, versions, formats, or environments]

---

## 8. Data, Validation, Permissions, And States

- **Inputs/data:** [Fields, formats, schemas, assets, or `Not applicable`]
- **Validation:** [Trusted-boundary rules or `Not applicable`]
- **Permissions/ownership:** [Who may perform or access what, or `Not applicable`]
- **Success state:** [Expected end state]
- **Failure/canceled state:** [Expected recovery]
- **Empty/loading/offline state:** [When applicable]
- **Migration/backward compatibility:** [Impact and rollback, or `Not applicable`]

---

## 9. Edge Cases

- [ ] Repeated or duplicate action.
- [ ] Interruption, cancellation, timeout, or partial failure.
- [ ] Missing, invalid, stale, or legacy data/configuration.
- [ ] Permission, environment, platform, or device difference.
- [ ] [Project-specific edge case].

Remove irrelevant generic examples rather than treating them as mandatory tests.

---

## 10. Proposed File Changes

### `[ADD / MODIFY / DELETE / RENAME] path/to/file`

- [Exact responsibility and intended change]
- [Important behavior or content to preserve]

---

## 11. Implementation Roadmap And Pseudocode

1. **Inspect:** [Files, behavior, or evidence to verify]
2. **Prepare:** [Interfaces, tests, data, or safe baseline]
3. **Implement:** [Core logic in plain English]
4. **Integrate:** [Connections, configuration, assets, or consumers]
5. **Verify:** [Smallest reliable automated and manual checks]
6. **Document:** [Task, walkthrough, changelog, setup, or handoff]

For multiple phases, give each phase:

- Objective
- Prerequisites
- Affected files
- Steps
- Exit criteria
- Approval boundary, when applicable

---

## 12. Testing And Verification Plan

### Automated / Repository Checks

- [ ] `[Verified existing command or targeted check]` — [Expected evidence]
- [ ] [Relevant success, failure, permission, regression, or structure check]

Do not invent commands. Use `Not applicable` with a reason when no meaningful automated check exists.

### Manual / User-Owned Checks

- [ ] [Exact steps]
- [ ] [Expected visible, experiential, editor, hardware, or environment result]
- [ ] [Important edge case]

Keep the result pending until the assigned user confirms it.

---

## 13. Documentation And Handoff

- **Task tracking:** [Configured path / Not used] — [Required update]
- **Walkthrough:** [Configured folder / Not used] — [Required explanation]
- **Changelog:** [Configured path / Not used] — [Required entry]
- **Setup/API/architecture/deployment docs:** [Paths and changes / Not applicable]
- **Known limitations:** [What remains incomplete or manual]

---

## 14. Risks, Recovery, And Permissions

- **Risk:** [Failure mode, likelihood, impact, mitigation]
- **Recovery/rollback:** [Safe reversal or why not applicable]
- **Git permissions:** [Authorized exact actions / None]
- **External actions:** [Authorized exact actions / None]
- **Destructive actions:** [Authorized exact actions / None]

Approval of this plan authorizes only the scope and actions explicitly granted by the user and repository rules.
