---
name: gamedev-unity-development
description: Apply Unity-specific repository guidance for C# scripts, MonoBehaviour lifecycle, scenes, prefabs, serialized assets, packages, input, rendering, editor tools, builds, profiling, and EditMode or PlayMode checks.
---

# GameDev Unity Development

Work safely within a verified Unity version, project structure, and editor-managed asset model. Use this as an engine specialization alongside the skill that owns the main task.

## Execution Capabilities

No MCP is required. Start with the files and tools actually accessible in this session, not the model name or a remembered integration. Use repository inspection and existing local commands where available; otherwise request the relevant files or give exact manual Unity steps. Do not install a bridge or invent tool calls to complete a skill.

For compilation, scene/prefab work, tests, screenshots, or live diagnostics, read [references/unity-editor-workflows.md](references/unity-editor-workflows.md). It defines repository-only, manual Editor, and already-available automation paths with the same evidence requirements.

## Verify Project Context

1. Read repository rules and active tracking documents.
2. Inspect `ProjectSettings/ProjectVersion.txt`, `Packages/manifest.json`, the lock file when present, relevant `Assets/` areas, assembly definitions, scenes, tests, and build automation.
3. Verify render pipeline, input system, target platforms, scripting backend/API compatibility, active scenes/build configuration clues, and relevant packages from files.
4. Inspect existing namespaces, component/data patterns, prefabs, ScriptableObjects, serialization, editor tooling, and ownership before proposing changes.

## Unity Safety

- Preserve `.meta` files and GUID relationships. Never regenerate or delete them casually.
- Treat `.unity`, `.prefab`, `.asset`, `.controller`, `.anim`, visual graphs, and similar serialized files as editor-managed even when text-based.
- Prefer the Unity Editor or established safe automation for complex scene, prefab, animation, navigation, lighting, Shader Graph, and serialized-object changes.
- Do not edit `Library/`, `Temp/`, `Logs/`, `obj/`, generated IDE files, or build outputs as source.
- Do not assume a scene is included in a player build merely because it exists.
- Ask before changing Unity/package versions, render pipelines, input systems, global project settings, scripting backends, or target SDK/toolchains.

## Runtime And Lifecycle

- Make initialization, enable/disable, update, pause, application focus, scene unload, cancellation, cleanup, and destruction explicit only where relevant.
- `Update()` is valid for real per-frame behavior; keep it small and avoid unmeasured repeated work. Use events or lower-frequency scheduling when behavior is state-driven.
- Use `FixedUpdate()` for physics-step work and `LateUpdate()` for justified ordering-sensitive work, not as generic alternatives.
- Avoid repeated broad searches, component lookups, avoidable allocations/LINQ/log formatting, material instantiation, and allocating physics queries in measured hot paths.
- `Destroy()` is valid for one-off cleanup. Use bounded pooling for frequently recreated objects only when profiling justifies it and reset/cleanup ownership is defined.
- Clean event subscriptions, Input actions, coroutines, tasks/Awaitables, tween callbacks, pooled state, native resources, and editor callbacks according to their owner.

Read [references/unity-checklist.md](references/unity-checklist.md) for assets, C#, shaders, performance, tests, and manual verification.

## Verification

Use existing compile/batchmode commands, EditMode tests, PlayMode tests, static asset/configuration checks, and player builds in proportion to the change. Assign Play Mode, visual, animation, audio, interaction-feel, hardware, and target-device checks to the user when reliable automation cannot prove them.

Never claim the Unity Editor, player build, visual result, or target device passed without actual evidence.

## Output Contract

Report verified Unity context, primary/supporting skill route, affected scripts/assets/settings, implementation and lifecycle behavior, automated results, exact manual Unity steps and status, compatibility risks, and limitations.
