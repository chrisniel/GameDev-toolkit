# GameDev Performance Checklist

## Budgets And Evidence

- frame time and percentile/hitch behavior, not average FPS alone;
- CPU main/render/worker time and synchronization;
- GPU frame/passes, overdraw, bandwidth, texture sampling, shader cost;
- managed allocations and GC, native/graphics memory, peaks and leaks;
- startup, scene transition, streaming, shader warmup, and asset loading;
- input-to-display latency and frame pacing;
- physics, animation, AI, pathfinding, particles, audio, and update frequency;
- build size, asset contribution, import/compression settings, and runtime residency.

## Unity Runtime Guidance

- `Update()` is valid for genuinely per-frame behavior. Keep it focused and measure aggregate cost across all active components.
- Prefer events, callbacks, state-change notification, scheduled ticks, or lower-frequency work when the behavior is not per-frame. Do not add a central update manager without evidence that its complexity pays off.
- Use `FixedUpdate()` for physics-step behavior, not as a generic faster update. Use `LateUpdate()` for ordering-sensitive work when appropriate.
- Avoid repeated `GetComponent`, broad `Find*`, reflection, avoidable LINQ, string formatting/logging, material instantiation, and allocating physics queries in measured hot paths. Cache stable references and use non-allocating alternatives when correct.
- `Destroy()` is valid for one-off cleanup. Avoid frequent `Instantiate()`/`Destroy()` churn for recurring projectiles, enemies, VFX, pickups, and UI elements when profiling shows a cost.
- A pool needs explicit ownership, bounded growth, reset-on-rent/return, disabled-state cleanup, event unsubscription, coroutine/task cancellation, and scene-transition behavior.
- Avoid changing `Time.fixedDeltaTime`, physics solver settings, culling, LOD, resolution, or quality globally without checking gameplay and visual consequences.

## Rendering And Assets

- draw calls, batches, SetPass/state changes, instancing/SRP batching;
- transparent overdraw, full-screen effects, particles, shadows, lights, post-processing;
- shader variants, compilation/warmup, unsupported fallbacks;
- texture dimensions/formats/mipmaps, mesh density/read-write, animation compression, audio load/compression;
- synchronous loads, dependency spikes, duplicate residency, and unload timing.

Route shader authoring or shader-specific correctness to `gamedev-rendering-shaders`.

## Platform Focus

Mobile: lower-end representative devices, thermal throttling, sustained frame time, memory ceiling, fill rate, bandwidth, battery/power, package size, touch latency, and background/resume behavior.

PC: scalable quality tiers, resolution and refresh-rate range, CPU/GPU/driver variance, VRAM, storage/loading variance, shader/pipeline-cache stutter, window modes, and frame pacing.

## Before/After Report

Record build, device, scene/state, duration, quality/resolution, measurement tool, baseline, result, variance, behavior preserved, and anything not measured.

Record capture provenance as well: supplied artifact, verified local command, user-operated profiler, or already-available automation. Use the Unity specialization when editor procedures are needed. Request targeted captures if live tools are absent; missing counters mean unknown, not zero. Wait for capture completion and inspect its actual interval before comparing. Do not install an MCP or profiler package implicitly.
