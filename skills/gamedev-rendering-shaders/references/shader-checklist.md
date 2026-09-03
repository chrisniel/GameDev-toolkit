# Rendering And Shader Checklist

Read the sections relevant to the current pipeline and target.

## Source And Ownership

- hand-written HLSL/GLSL/MSL-style source and includes;
- Unity ShaderLab `Properties`, `SubShader`, `Pass`, tags, render state, `HLSLPROGRAM`, keywords;
- Shader Graph or another visual graph edited through its supported editor;
- generated/preprocessed/compiled output inspected but not treated as editable source;
- material/preset/renderer-feature/render-pass dependencies and stable property names.

## Correctness

- object/world/view/tangent/clip coordinate spaces;
- normals, tangents, handedness, skinning, deformation;
- linear versus gamma color and HDR ranges;
- opaque/cutout/transparent queue, blending, depth write/test, culling;
- shadows, additional lights, fog, decals, motion vectors, post-processing;
- instancing, batching/SRP batch compatibility, stereo/XR when supported;
- missing texture/property/defaults and unsupported-shader fallback.

## Variants And Build

- local/global keywords and combinations;
- `shader_feature` versus multi-compile style intent;
- platform/quality defines and runtime toggles;
- variant count/build log, stripping rules, bundles/addressables/content catalogs;
- required fallback, preloading/warmup, first-use compilation stutter;
- build time, file size, load time, and runtime shader memory.

## GPU Cost

- passes, draw calls/state changes, batching/instancing;
- vertex count/deformation and fragment coverage;
- opaque versus transparent overdraw and full-screen work;
- texture samples, formats, bandwidth, mipmaps, dependent reads;
- loops, dynamic branching, precision, interpolators/register pressure;
- lighting/shadows, particles, post-processing, compute dispatch and synchronization.

Do not infer cost from source alone when a compiler/capture is available.

## Platform Matrix

Mobile: tile-based GPU behavior, fill rate, bandwidth, precision support, texture formats, thermal/sustained performance, memory, resolution scaling.

PC: GPU/driver/API variance, VRAM, resolution/refresh range, quality scaling, pipeline-cache or shader-compilation stutter.

## Verification

- shader/graph compiles for intended variants and APIs;
- representative materials render in required scenes/lighting/cameras;
- frame debugger or equivalent confirms pass/state behavior;
- GPU profiler/capture uses representative build/hardware when needed;
- reference and fallback screenshots are assigned to a human reviewer;
- before/after measurements use the same scene, camera, settings, build, and device.

Record where each result came from: compiler log, frame/pass capture, actual screenshot, or target-device measurement. Use the Unity specialization for Editor procedures when available. Without live access, ask for the exact material/scene/camera capture and relevant errors; do not equate a source review with shader compilation or a screenshot with a GPU benchmark. Missing automation never authorizes unsupported graph edits.
