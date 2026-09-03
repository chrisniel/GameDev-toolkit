# Phase 6A Private Testing Repository — Walkthrough

**Purpose:** Explain the repository-local preparation for storing and testing the toolkit in a private personal GitHub repository.

**Audience:** Toolkit maintainer and future reviewers checking provenance, privacy, and publication boundaries.

**Status:** Repository-local readiness implemented and verified; user-owned GitHub creation, commit, and push remain pending.

**Last updated:** 2026-08-31

## What Was Delivered

- Added a privacy-safe provenance record for the copied and adapted skill material.
- Recorded the source rights holder's confirmed private-use permission without committing the Discord screenshot or private identifiers.
- Aligned the README, repository rules, documentation index, tracking, and changelog with the Phase 6A private-testing boundary.
- Kept Git branch, staging, commit, remote, push, and GitHub repository actions under the user's control.
- Preserved the no-license and no-public-distribution restrictions for a possible future Phase 6B.

## Files Changed

- `docs/provenance.md` — canonical source, permission-scope, attribution, and restriction record.
- `README.md` — reports private-testing readiness and links to the provenance record.
- `docs/README.md` — exposes the canonical provenance document from the documentation index.
- `AGENTS.md` — keeps private permission distinct from public redistribution authority.
- `docs/08_Tracking/implementation-plan.md` — defines the Phase 6A workflow and acceptance criteria.
- `docs/08_Tracking/task.md` — records current status, ownership, verification, and remaining user actions.
- `CHANGELOG.md` — records the Phase 6A documentation and privacy delivery.

## How The Logic Works

1. The provenance document identifies the public source repository and the scope of the local adaptation.
2. It records only the minimum permission facts needed for maintainers while the original evidence stays private.
3. Repository rules and status documents link to that canonical record instead of duplicating or expanding private details.
4. Automated checks review skill structure, links, formatting, and likely secrets before the user stages anything.
5. The user creates an empty private GitHub repository, reviews the intended files, and performs the Git operations.
6. Personal Codex installation and real-project skill behavior remain separate tests so publishing the private repository does not silently change installed skills.

## Key Concepts

- **Provenance** — a record of where material came from and how it reached the current project. Here it connects the adapted skills to `Jeruzael/mcp-server`.
- **Permission scope** — the exact actions an owner allowed. Private use and testing do not automatically include public redistribution or relicensing.
- **Canonical document** — the single authoritative file for a fact. Other documents link to `docs/provenance.md` so permission wording does not drift across multiple copies.
- **Private repository** — a remote repository visible only to its owner and explicitly authorized collaborators; it is still an external copy and therefore requires owner permission.

## How To Use It

1. Create an empty private GitHub repository named `gamedev-workflow-toolkit` under the intended personal account; do not generate a README, `.gitignore`, or license on GitHub.
2. Review the complete local file list and confirm that no screenshot, credential, temporary attachment, or private contact detail is included.
3. Create the initial commit and push it using the user's preferred Git workflow.
4. Confirm on GitHub that visibility is **Private**, the expected branch and commit are present, and no license or release was created.
5. Keep actual skill installation and `$skill-name` behavior testing pending until the personal Codex environment is ready.

## Safe Customization

- Update `docs/provenance.md` only when permission, source, attribution, or licensing facts actually change.
- Add a license only after the relevant rights holder approves the exact public or redistribution terms.
- Keep the original permission evidence outside the repository and avoid adding broad image-ignore rules that could hide legitimate skill assets.
- Do not change private visibility merely because the toolkit passes structural validation; behavioral testing and public licensing are separate decisions.

## Verification

### Automated / Repository Checks

- [X] `powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\validate-skills.ps1` — all 36 skill folders and 36 unique names passed.
- [X] Repository Markdown links resolve across 94 Markdown files.
- [X] Intended repository text contains no trailing whitespace; ignored `temp.txt` retains one pre-existing feedback-file finding.
- [X] High-confidence secret and private-evidence scan reports no finding, and no root license file exists.

### Manual / User-Owned Checks

- [ ] The GitHub repository belongs to the intended personal account.
- [ ] GitHub displays the repository visibility as **Private**.
- [ ] The initial commit contains only the reviewed repository files.
- [ ] No `LICENSE`, release, tag, package, or public registry entry was created.

These manual checks remain pending until the user completes and confirms the GitHub work.

## Limitations And Deferred Work

- The private GitHub destination does not exist or has not yet been verified by Codex.
- The toolkit has not yet been installed or behavior-tested in the maintainer's personal Codex environment.
- Phase 6B public distribution, open-source licensing, releases, and MCP registry integration remain unauthorized.

## Related Documentation

- `docs/provenance.md`
- `docs/08_Tracking/implementation-plan.md`
- `docs/08_Tracking/task.md`
- `README.md`
