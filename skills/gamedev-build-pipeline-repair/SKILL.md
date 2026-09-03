---
name: gamedev-build-pipeline-repair
description: Diagnose and repair automated game import, test, build, packaging, signing, artifact, and platform-pipeline failures without triggering hosted runs, releases, or deployments without permission.
---

# GameDev Build Pipeline Repair

Find the failing stage from logs and configuration, reproduce it safely when practical, and make the smallest portable repair.

## Workflow

1. Record the failing job/stage, engine version, target platform, runner image, command, first meaningful error, last successful run, and recent related change.
2. Read local build scripts, engine project settings, package/plugin locks, CI configuration, environment-variable names, caching, signing references, artifact paths, and documentation.
3. Classify the failure: checkout/submodule/LFS, engine activation, package/import, compilation, tests, shader/content processing, platform SDK, signing, packaging, cache, artifact upload, or release step.
4. Distinguish the root error from later cascading failures.
5. Reproduce with an existing local or batch command only when available, safe, and proportionate. Do not invent credentials or install missing tools without approval.
6. Fix the narrowest source/configuration issue and preserve local/CI version parity.
7. Validate configuration syntax and the nearest executable stage. Treat a hosted rerun as an external action requiring permission.
8. Update build documentation when commands, prerequisites, variables, outputs, or limitations change.

Read [references/pipeline-checklist.md](references/pipeline-checklist.md) for common game-build stages.

## Rules

- Do not rerun hosted jobs, push commits, upload artifacts, sign/publish builds, submit to a store, or deploy without explicit authorization.
- Do not print secret values or replace secrets with hardcoded credentials.
- Do not "fix" reproducibility by using an unpinned engine, package, SDK, or action version without justification.
- Do not clear shared caches or delete generated data as the first response; confirm the exact target and risk.
- Do not claim the full pipeline passed when only local syntax or one stage was checked.

## Output Contract

Report failing stage and evidence, root cause, focused changes, local checks and results, unrun hosted/platform checks, required user action, and remaining risks.
