---
name: gamedev-rendering-shaders
description: Author, debug, review, and optimize game shaders, materials, render features, and GPU effects across HLSL-style code, Unity ShaderLab or Shader Graph, render pipelines, variants, and PC/mobile targets.
---

# GameDev Rendering And Shaders

Deliver visually correct, pipeline-compatible rendering work and measure GPU or build cost instead of optimizing shader code by folklore.

## Establish Rendering Context

1. Verify engine/version, render pipeline, graphics APIs, shader language/model, color space, HDR/lighting path, target platforms, hardware tiers, quality levels, and existing shader/material conventions.
2. Identify the intended visual result, reference images, affected materials/objects/cameras/lights, fallback behavior, and performance budget.
3. Determine whether the source of truth is hand-written HLSL/GLSL-style code, ShaderLab or another wrapper, a visual graph, generated code, material settings, a render feature/pass, or engine configuration.
4. Treat complex visual-graph and engine-managed shader assets as editor-owned unless a repository workflow proves direct editing safe. Inspect generated code for diagnosis; do not edit generated output as the source.

## Author Or Repair

1. Follow existing includes, naming, coordinate spaces, lighting functions, texture conventions, render-state ownership, and pipeline APIs.
2. Make vertex/fragment/compute stages, passes, tags, blend/depth/cull state, keywords, and material properties explicit only where required.
3. Keep platform or quality variants bounded. Distinguish compile-time variants from runtime branches and confirm stripping/warmup behavior for actual content.
4. Validate normals/tangents, precision, color space, instancing/batching, stereo/XR paths, motion vectors, shadows, fog, depth, transparency, and fallback/error behavior only as applicable.
5. Preserve material property names and serialized references or provide a migration when they change.
6. For a performance request, capture GPU/frame/build evidence and consult `gamedev-performance-optimization` when available; otherwise report the measurements still needed.

Read [references/shader-checklist.md](references/shader-checklist.md) for ShaderLab, Shader Graph, variants, and platform checks.

## Rules

- Do not assume fewer instructions, lower precision, branch removal, or one universal shader is automatically faster or correct on every GPU.
- Do not change render pipelines, graphics APIs, global quality, or package versions without explicit approval.
- Do not strip or exclude variants without proving required materials, runtime keywords, scenes, bundles, and quality tiers remain covered.
- Do not judge visual correctness from compilation alone or performance from editor FPS alone.
- Do not add an external GPU capture tool or package without approval.

## Output Contract

Report verified rendering context, visual contract, source-of-truth assets, shader/material changes, compatibility and variant decisions, automated/compiler evidence, GPU/build measurements, manual visual matrix, and limitations.
