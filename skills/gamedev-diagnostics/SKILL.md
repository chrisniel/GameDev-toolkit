---
name: gamedev-diagnostics
description: Add production-safe game diagnostics using structured logs, profiler markers, crash context, build identifiers, telemetry boundaries, and reproducible debug overlays without exposing player data.
---

# GameDev Diagnostics

Add the minimum visibility needed to reproduce runtime, editor, build, performance, or platform failures.

## Workflow

1. Start from a concrete support, debugging, performance, or release-verification question.
2. Inspect existing logging, crash reporting, profiler markers, telemetry, debug menus/overlays, build metadata, and privacy rules.
3. Choose the least invasive signal: structured event/log, assertion, counter, state snapshot, profiler marker, build/version label, or opt-in debug overlay.
4. Include stable correlation context such as build version, platform, scene/state, subsystem, operation, and non-sensitive error category.
5. Rate-limit or aggregate repeated events and avoid per-frame log spam.
6. Separate development-only detail from release-safe diagnostics using existing build/configuration conventions.
7. Define retention, consent, redaction, and offline behavior before adding remote telemetry or crash upload. External services require approval.
8. Verify the signal appears on the intended path, is absent or reduced in release paths as designed, and does not materially alter timing.

Read [references/diagnostics-checklist.md](references/diagnostics-checklist.md) for signal selection and privacy checks.

## Rules

- Do not log credentials, tokens, private contact details, full user-generated content, precise personal identifiers, or raw save data.
- Do not add a telemetry/crash vendor, upload data, or change dashboards without explicit approval.
- Do not use logging as a substitute for handling an error or writing a regression test.
- Do not leave expensive debug rendering, stack capture, or high-volume tracing enabled unintentionally in release builds.
- Do not claim a production issue is observable until the actual configured path is verified.

## Output Contract

Report the diagnostic question, signal and fields, privacy/release boundary, files changed, verification, expected operational use, and remaining visibility gaps.
