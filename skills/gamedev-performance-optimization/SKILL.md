---
name: gamedev-performance-optimization
description: Diagnose and improve game frame time, CPU/GPU work, allocations, memory, loading, rendering, physics, input latency, frame pacing, build size, and sustained PC/mobile performance using evidence.
---

# GameDev Performance Optimization

Measure before optimizing, change the smallest proven bottleneck, and preserve correctness, visuals, responsiveness, determinism, and intended game feel.

## Workflow

1. Define the symptom, representative scene/state, target build and hardware tier, quality settings, expected budget, actual result, and reproduction stability.
2. Capture a baseline outside misleading conditions when possible. Prefer a development/player build on representative hardware over editor-only conclusions.
3. Classify the dominant constraint: CPU/main thread, render thread/GPU, jobs/synchronization, managed allocations/GC, native memory, loading/IO, physics/simulation, input/frame pacing, thermal/power, or build footprint.
4. Use existing profiler markers, captures, memory snapshots, frame/debug captures, logs, build reports, or code evidence to locate the expensive path.
5. Rank candidate fixes by expected impact, evidence strength, risk, implementation cost, and effect on quality.
6. Apply one focused change or a small coherent group.
7. Repeat the same capture and compare before/after measurements.
8. Run correctness, visual, timing, physics, input-feel, save, and platform regression checks. Keep unperformed hardware or experiential checks pending.

Read [references/performance-checklist.md](references/performance-checklist.md) for subsystem checks and Unity hot-path guidance.

## Core Rules

- Do not infer improvement from code style, an API replacement, or higher editor FPS alone.
- Do not lower visual quality, simulation accuracy, responsiveness, accessibility, or content without approval.
- Do not ban per-frame callbacks, allocation-producing APIs, or object destruction categorically; evaluate frequency, scale, lifetime, and measured cost.
- Do not pool every object. Pool recurring objects only when reuse is safe and measured churn matters.
- Do not introduce a job system, ECS, custom player loop, native plugin, new package, or major asset pipeline without a justified design and approval.

## Output Contract

Report target and baseline, evidence, bottleneck, prioritized options, implemented change, behavior preserved, before/after results, unmeasured areas, manual target-device checks, and remaining risks.
