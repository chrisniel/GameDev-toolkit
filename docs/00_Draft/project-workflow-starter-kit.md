# Project Workflow Starter Kit

## Component Card

- Component Name: Docs_ProjectWorkflowStarterKit_v2.0 (Token-Optimized)
- Category: Documentation / AI Workflow Governance / Context Engineering
- Purpose: Provide a universal, token-efficient baseline for AI-assisted development across game, web, and software repositories.
- Core Pillars:
  1. In-Place Updates: AI agents must update checklists and plans in place rather than stacking duplicate drafts or writing above uncompleted tasks.
  2. Active vs. Archive Separation: Decouples active sprint execution from completed history to keep active task context under 80 lines.
  3. Standard Numbered Layout: Organizes documentation into strict two-digit lifecycle directories (00_Drafts to 07_Archive).
  4. Context Ignore Shielding: Shields heavy folders (00_Drafts, 07_Archive, CHANGELOG.md) from being ingested by default.
- Version: v2.0
- Dependencies: None (Pure Markdown). Compatible with Cursor, Claude Code, Cline, Roo-Code, GitHub Copilot, and web-based LLMs.

---

## Files in the Kit

- .aiignore (or .cursorignore): Placed in repository root to block large archives and scratchpads from auto-indexing.
- AGENTS.md: Placed in repository root; contains universal operating rules and the project-specific configuration profile.
- task-template.md: Placed in Docs/01_Tracking/; manages live execution state and active sprint tasks.
- implementation-plan-template.md: Placed in Docs/02_Planning/; manages architectural proposals, pseudocode, and QA gates.
- walkthrough-template.md: Placed in Docs/03_Walkthroughs/; documents completed deliveries and logic breakdowns.
- project-workflow-starter-kit.md: This reference manual (retained for human maintainers; never loaded into AI context).

---

## Standard Numbered Directory Layout

Docs/
|-- 00_Drafts/                 (Ignored by default: Raw ideas, scratchpads, unreviewed notes)
|-- 01_Tracking/               (Active task.md, task_archive.md)
|-- 02_Planning/               (Active implementation-plan.md, TDDs, acceptance criteria)
|-- 03_Walkthroughs/           (walkthrough-*.md, developer handovers)
|-- 04_Architecture/           (Systems docs, API contracts, data models, technical specs)
|-- 05_Design/                 (GDD, game lore/story, UI/UX specs, asset documentation)
|-- 06_Guides/                 (Contributor onboarding, testing checklists, review standards)
`-- 07_Archive/                (Ignored by default: Superseded plans, old audits, historical logs)

---

## How to Set Up in a New Project

### Step 1: Copy Baseline Files
1. Copy .aiignore and AGENTS.md to the repository root.
2. Create the Docs/ directory with folders 00_Drafts through 07_Archive.
3. Copy task-template.md into Docs/01_Tracking/task.md.
4. Copy implementation-plan-template.md into Docs/02_Planning/.
5. Copy walkthrough-template.md into Docs/03_Walkthroughs/.

### Step 2: Configure the Project Profile
Open AGENTS.md and edit only the Project Profile section at the top. Point each field to your chosen paths or mark it Not used.

#### Example A: Deep Game Development Project
- Project Name: [Game Title]
- Active Task File: Docs/01_Tracking/task.md
- Task Archive Path: Docs/01_Tracking/task_archive.md
- Implementation Plan File: Docs/02_Planning/implementation-plan.md
- Walkthrough Folder: Docs/03_Walkthroughs/
- Changelog File: CHANGELOG.md
- Primary Tech Stack: Unity 6 C#, URP, PrimeTween
- Manual Verification Areas: Game feel, mouse/touch input, frame rate, audio, hardware
- Protected Boundaries: Private repo; do not modify package manifests without authorization

#### Example B: Modern Web Application
- Project Name: [Web App Name]
- Active Task File: Docs/01_Tracking/task.md
- Task Archive Path: Docs/01_Tracking/task_archive.md
- Implementation Plan File: Docs/02_Planning/implementation-plan.md
- Walkthrough Folder: Docs/03_Walkthroughs/
- Changelog File: CHANGELOG.md
- Primary Tech Stack: Next.js 14, TypeScript, Tailwind, Supabase
- Manual Verification Areas: Mobile responsiveness, OAuth login, checkout flows
- Protected Boundaries: Do not expose production secrets; do not run unapproved database migrations

#### Example C: Lightweight Utility / Script
- Project Name: [CLI Tool Name]
- Active Task File: task.md
- Task Archive Path: task_archive.md
- Implementation Plan File: Not used
- Walkthrough Folder: Not used
- Changelog File: CHANGELOG.md
- Primary Tech Stack: Python 3.12, Click
- Manual Verification Areas: CLI arguments, filesystem write operations
- Protected Boundaries: Do not alter global system packages

---

## Core Operational Rules (Token Economics)

1. The In-Place Golden Rule:
   AI agents must update existing lines and toggle checkboxes [ ] to [x] in place. Never allow an agent to prepend duplicate checklists, summaries, or plans above uncompleted tasks.

2. Active vs. Archive Separation:
   task.md must remain strictly under 80 lines containing only current active sprint items and the immediate handoff block. Verified completed tasks must be moved to task_archive.md.

3. Decoupled Planning and Execution:
   The AI writes and updates implementation plans in Docs/02_Planning/. Once the user approves the plan, active coding begins, and the AI switches tracking exclusively to task.md, stopping the ingestion of the implementation plan on every turn.

4. Append-Only Changelog:
   CHANGELOG.md is strictly for recording delivered features. The agent only reads the top 15 lines if needed to match entry formatting and appends new entries to the top. It never reads the full historical log into memory.