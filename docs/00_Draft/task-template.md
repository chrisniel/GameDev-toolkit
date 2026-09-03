# Task Tracking: [Task / Delivery Name]

**Template version:** `Docs_ProjectWorkflowStarterKit_v1.0`

Copy this file to the **Active task file** configured in the project's `AGENTS.md`. Replace every bracketed placeholder, remove unused optional sections, and use `Not used` only when the project genuinely does not track that item.

## Status Overview

- **Current phase:** [Planning / In progress / Verification / User review / Complete / Blocked]
- **Target:** [One or two sentences describing the intended outcome]
- **Related implementation plan:** [Configured path / Not used]
- **Scope guard:** [Files, systems, data, environments, or behaviors that may be changed—and important boundaries that must remain untouched]

---

## Active And Pending Work

### In Progress

- [ ] [Current active item]
- [ ] [Immediate next step]

### Completed

- [X] [Verified completed item]
- [X] [Delivered behavior, artifact, or decision]

### Remaining / Upcoming

- [ ] [Approved remaining item]
- [ ] [Documentation, validation, or handoff work]

### Blocked / Deferred / Out Of Scope

- [-] [Blocked item — state the dependency or approval needed]
- [-] [Deferred idea — state where it should be reconsidered]
- [-] [Explicitly excluded scope]

---

## Decisions And Approvals

- [YYYY-MM-DD] **Decision:** [Decision and reason]
- [YYYY-MM-DD] **Approval:** [What the user approved]
- [YYYY-MM-DD] **Assumption:** [Non-blocking assumption that future work must know]

Remove this section if the task has no meaningful decision history.

---

## Verification Status

### Automated / Repository Checks

- [ ] [Build, compile, lint, format, unit, integration, structural, or other relevant check] — [Result / Pending / Not applicable with reason]
- [ ] [Targeted edge-case or regression check] — [Result / Pending / Not applicable with reason]
- [ ] Generated artifacts or temporary test data cleaned up — [Yes / Pending / Not applicable]

### Manual / User-Owned Checks

- [ ] [Exact workflow, visual, editor, hardware, environment, or target-device check] — [Pending user verification / Passed with date / Failed with observation / Not applicable]
- [ ] [Important edge case and expected result] — [Status]

Never mark a user-owned check as passed until the assigned user confirms it.

---

## Permission Ledger

- Repository-local implementation: [Authorized / Not authorized / Limited to ...]
- Destructive actions: [Authorized exact action / Not authorized]
- Dependency or tool installation: [Authorized exact action / Not authorized]
- `git add`: [Authorized / Not authorized]
- `git commit`: [Authorized / Not authorized]
- `git push`: [Authorized / Not authorized]
- Branch, tag, pull request, remote, or visibility changes: [Authorized exact action / Not authorized]
- External systems, deployments, publication, or production/private data: [Authorized exact action / Not authorized]

---

## Continuation Note

[One short paragraph telling the next session what to read, what is currently true, what must happen next, and which actions still require approval.]
