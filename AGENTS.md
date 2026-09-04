# AI Agent Working Rules

Template Component: Docs_ProjectWorkflowStarterKit_v2.0

These rules are a reusable baseline for AI-assisted work across software, game, and web projects. Explicit system instructions and the user's immediate prompt take precedence.

Configure project-specific paths and boundaries in the Project Profile below. If a path is marked Not used, skip that workflow without creating substitute files.

---

## Project Profile — Configure Per Project

- Project Name: [Insert Project Name]
- Active Task File: Docs/01_Tracking/task.md [or task.md or Not used]
- Task Archive Path: Docs/01_Tracking/task_archive.md [or Not used]
- Implementation Plan File: Docs/02_Planning/implementation-plan.md [or Not used]
- Walkthrough Folder: Docs/03_Walkthroughs/ [or Not used]
- Changelog File: CHANGELOG.md [or Not used]
- Primary Tech Stack: [e.g., Unity C# / Next.js TypeScript / Python FastAPI / flutter / ASP.Net]
- Manual Verification Areas: [e.g., Game feel, visuals, audio, responsive UI, hardware]
- Protected Boundaries: [e.g., Private repo; no license changes; do not modify external packages or remote services without authorization]

---

## 1. Strict Numbered Documentation Hierarchy

- When a documentation directory (Docs/) is maintained, all subdirectories must follow strict two-digit zero-padded numbering:
  - Docs/00_Drafts/ (Raw ideas, scratchpads, unreviewed notes)
  - Docs/01_Tracking/ (Active task.md and task_archive.md)
  - Docs/02_Planning/ (Implementation plans, technical designs, acceptance criteria)
  - Docs/03_Walkthroughs/ (Delivery walkthroughs, developer handovers)
  - Docs/04_Architecture/ (System contracts, API schemas, core technical specs)
  - Docs/05_Design/ (Product/Game design docs, wireframes, UI/UX, narrative)
  - Docs/06_Guides/ (Contributor onboarding, setup steps, testing standards)
  - Docs/07_Archive/ (Superseded drafts, old audits, deprecated documentation)
- Never create unnumbered directories or loose documentation files at the root of Docs/.

## 2. Context Ignore Boundaries & Token Preservation

- Docs/00_Drafts/ is strictly ignored by default: Never read, scan, or load files in Docs/00_Drafts/ into context unless the user explicitly prompts to inspect a specific draft.
- Docs/07_Archive/ and task archive files are strictly ignored: Never load historical archives into context unless explicitly asked to perform a retrospective.
- CHANGELOG.md is append-only: Never read the full changelog history into context. Read only the top 15 lines if needed to match entry formatting.
- Design files in Docs/05_Design/ and architecture files in Docs/04_Architecture/ remain accessible on demand when relevant to the active task.
- If .aiignore, .cursorignore, or .clineignore is missing, the agent is authorized to create one with standard token-preservation ignore rules.

## 3. Plan Before Implementation & In-Place Plan Updates

- For non-trivial features, refactors, or bug fixes, provide step-by-step logic in plain pseudocode for user review before writing code.
- When an implementation plan is configured, create or update it directly inside Docs/02_Planning/.
- Update In-Place: Never prepend new drafts or duplicate plans above existing content. Update existing sections (affected files, acceptance criteria, steps) in place.
- Obtain explicit user approval on the plan before implementing code.
- Token Hygiene: Once the plan is approved, switch execution tracking entirely to the active task file. Do not re-read the implementation plan on subsequent coding turns unless revising architecture or explicitly directed.

## 4. In-Place Task Continuity & Archiving (task.md)

- Read the active task file before resuming work to verify current goals, blockers, and next actions.
- Update In-Place: Check off items, edit line items, and maintain the CURRENT EXECUTION STATE block in place. Never prepend new task blocks, duplicate headings, or status overviews above existing uncompleted tasks.
- Active Sprint Only: The active task file must contain only current work and immediate blockers (target: under 80 lines). When a milestone or sprint is complete, move completed items to the configured task archive path. Never let completed checklists accumulate in the active task file.

## 5. Append-Only Changelog (CHANGELOG.md)

- For completed code or behavior deliveries, append a single concise, dated entry to the top of CHANGELOG.md.
- Document user-visible behavior changes, modified architecture, and verification status.

## 6. Educational Walkthroughs & Handoffs

- When walkthroughs are required, write them into Docs/03_Walkthroughs/ upon delivery.
- Explain the core logic flow sequentially without dumping full source files.
- Define at least three relevant programming, architectural, or domain concepts in accessible language.
- Include exact repository paths, safe customization points, and verified test results.

## 7. Single Source of Truth & Documentation Alignment

- When contracts, APIs, configurations, or behaviors change, update the closest canonical document in the same delivery.
- Prefer linking or referring to canonical documents over duplicating content across multiple markdown files.
- Treat drafts, legacy notes, and attached documents as reference material unless explicitly approved as current requirements.

## 8. Surgical & Minimal Changes

- Touch only the files and lines necessary for the approved task.
- Preserve unrelated user edits and existing working behavior.
- Do not refactor functioning code, rewrite serializers, or introduce new dependencies without explicit task justification.
- Adhere strictly to project-specific performance constraints (e.g., zero-allocation per-frame loops, memory budgets, strict typing).

## 9. Truthful Verification & Safety Boundaries

- The AI agent may author test fixtures, run non-destructive automated checks, and provide manual checklists.
- Never claim tests passed unless executed and confirmed: Never simulate engine execution, fabricate test results, or mark user-assigned checks as passed without explicit confirmation.
- Clearly separate automated script/command results from pending manual or hardware-dependent user checks.
- Provide step-by-step reproduction and verification steps for all visual, physical, or experiential checks.

## 10. Clarify Material Unknowns

- If missing information impacts security, architecture, performance, data integrity, or costs, ask before proceeding.
- When risk is low, proceed with clearly labeled non-blocking assumptions and record them in the active task file.

## 11. Privacy, Secrets & Data Integrity

- Never expose, log, or commit passwords, tokens, private API keys, credentials, or personal data.
- Always use documented environment variables and placeholder names for sensitive configurations.

## 12. Git & External Boundary Protections

- Do not execute git add, git commit, git push, branch switching, tag creation, or pull request commands unless the user explicitly authorizes that specific command.
- Treat external repositories, package caches, and system paths outside the workspace as strictly read-only.
- Resolve exact target paths before executing any file deletion or overwrite.