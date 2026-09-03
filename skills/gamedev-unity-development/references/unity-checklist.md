# GameDev Unity Checklist

Use only the relevant sections.

## Context

- [ ] Unity version read from project settings.
- [ ] Packages and lock data inspected.
- [ ] Render pipeline, input system, target platforms, scripting backend, and test framework verified.
- [ ] Relevant scenes, Build Settings clues, assemblies, scripts, prefabs, assets, and tests located.

## C# And Lifecycle

- [ ] Existing namespace, assembly, component, and serialization conventions followed.
- [ ] Required serialized dependencies are validated without hiding broken setup.
- [ ] Initialization and update order do not rely on undocumented ordering between peer objects.
- [ ] Scaled/unscaled time and physics step are deliberate.
- [ ] Subscriptions, actions, coroutines, tasks/Awaitables, tweens, pools, and native handles are cleaned.
- [ ] Per-frame paths avoid unjustified searches, allocations, reflection, LINQ, logging, or physics-query garbage.
- [ ] Repeated spawn/despawn uses pooling only when measured and reset-safe.

## Assets And Editor

- [ ] `.meta` files and GUID links are preserved.
- [ ] Complex scene/prefab/animation/graph edits use the Editor or an established safe path.
- [ ] Prefab overrides, nested prefab ownership, ScriptableObject data, and serialized names are checked.
- [ ] Scenes, layers, tags, physics matrices, render settings, quality tiers, and required references are documented where affected.
- [ ] Generated/cache/build folders remain unmodified as source.

## Shaders And Rendering

- [ ] Pipeline and package versions are verified before ShaderLab/Shader Graph work.
- [ ] Generated Shader Graph code is diagnostic output, not the source of truth.
- [ ] Materials, property names, variants, stripping, fallback, Frame Debugger, and target graphics APIs are checked as applicable.
- [ ] Shader-specific work follows `gamedev-rendering-shaders` and measured GPU work follows `gamedev-performance-optimization`.

## Automated Checks

- [ ] Available file, command-line, user-operated Editor, and existing automation paths identified; no MCP assumed.
- [ ] Correct project/scene/instance and fresh target identifiers verified before live operations.
- [ ] Compilation/import completion and new errors verified before dependent operations.
- [ ] Async jobs have a final result; all relevant result pages and failures retrieved.

- [ ] C# compilation or existing batchmode validation.
- [ ] Relevant EditMode tests.
- [ ] Relevant PlayMode tests.
- [ ] Static script/asset/configuration checks.
- [ ] Player build or build-pipeline check when configuration changed.

## Manual Unity Verification

Record exact Unity version, scene path, build target/device, setup, action, expected result, edge case, and one status:

- `Passed - user confirmed [date/context]`
- `Failed - [observed issue]`
- `Pending user verification`
- `Not applicable - [reason]`

Exit Play Mode and confirm no unintended serialized scene/prefab changes remain.

For detailed evidence and fallback steps, read [unity-editor-workflows.md](unity-editor-workflows.md).
