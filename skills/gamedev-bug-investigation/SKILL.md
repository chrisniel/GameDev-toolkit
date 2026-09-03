---
name: gamedev-bug-investigation
description: Diagnose and fix gameplay, editor, asset, input, physics, animation, rendering, audio, save, build, or platform defects through reproducible evidence and focused regression verification.
---

# GameDev Bug Investigation

Find the smallest evidence-backed cause before changing behavior.

## Investigation

1. Record expected versus actual behavior, reproducibility, first known occurrence, engine/build version, platform/device, scene/state, input path, save data, and logs or captures.
2. Reproduce with the smallest stable sequence. If reproduction is unavailable, label hypotheses and improve diagnostics before guessing.
3. Classify the likely layer: game rules/state, lifecycle/order, input, physics, animation, audio, UI, rendering/shader, asset/serialization, save/load, networking, build/configuration, or platform integration.
4. Trace from the observed symptom to the owning code/data and identify the last known-correct state.
5. Compare editor versus player build and platform-specific behavior when the distinction matters.
6. Inspect recent related changes, serialized references, timing, object reuse, scene transitions, subscriptions, async/coroutine cancellation, and error handling.
7. Form a falsifiable cause statement and test it with the least invasive evidence.
8. Implement the smallest fix that addresses the cause rather than hiding the symptom.
9. Add a regression check at the lowest reliable layer and verify relevant neighboring behavior.

Read [references/investigation-checklist.md](references/investigation-checklist.md) for evidence and regression prompts.

## Rules

- Do not change code before understanding the failure path unless adding narrow diagnostics is the safest way to obtain evidence.
- Do not delete caches, reimport all assets, reset settings, or alter user data as a first diagnostic step.
- Do not blame timing, the engine, the GPU, or "corruption" without evidence.
- Keep editor, visual, audio, experiential, and device-dependent results pending until actually observed.

## Output Contract

Report reproduction, evidence, root cause, focused fix, files affected, regression coverage, checks run, unresolved uncertainty, and manual verification steps.
