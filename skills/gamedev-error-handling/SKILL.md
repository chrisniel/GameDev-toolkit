---
name: gamedev-error-handling
description: Design and improve safe failure behavior for game runtime systems, saves, content loading, editor tools, networking, platform services, and builds without hiding actionable diagnostics.
---

# GameDev Error Handling

Make failures recoverable and understandable for players, developers, content authors, and support without corrupting state or exposing sensitive detail.

## Workflow

1. Identify the failing operation, caller, state that may already have changed, affected audience, and whether recovery is possible.
2. Classify the failure: invalid data/reference, missing content, save corruption/version mismatch, resource exhaustion, canceled async work, network/platform service, unsupported capability, editor-tool misuse, or build/configuration error.
3. Define the safe state after failure: retry, fallback, return to menu/checkpoint, disable one feature, preserve original save, abort import/build, or stop with a clear developer error.
4. Keep player-facing messages actionable and non-technical; keep developer context in logs/diagnostics without secrets or private data.
5. Preserve transactional boundaries so partial rewards, inventory changes, saves, downloads, or scene transitions are not silently committed.
6. Make retries bounded and idempotent where possible. Cancel outstanding work and release resources when the owner disappears or the scene/state changes.
7. Add tests for the meaningful failure and recovery paths.

Read [references/failure-checklist.md](references/failure-checklist.md) for common states and recovery checks.

## Rules

- Do not catch and ignore exceptions merely to keep the game running.
- Do not silently replace required content or references with defaults that hide broken setup.
- Do not overwrite the last recoverable save with known-invalid data.
- Do not show stack traces, tokens, account identifiers, file-system details, or private diagnostics to players.
- Do not retry indefinitely or continue after an invariant required for correctness is broken.

## Output Contract

Report the failure contract, user/developer presentation, safe-state and cleanup behavior, retry/fallback policy, files changed, tests, and unresolved operational risks.
