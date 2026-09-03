# GameDev Onboarding Checklist

## Engine And Tooling Evidence

- Unity: `ProjectSettings/ProjectVersion.txt`, `Packages/manifest.json`, `Assets/`, assembly definitions.
- Unreal: `.uproject`, `.uplugin`, `Config/`, `Content/`, `Source/`, target/build files.
- Godot: `project.godot`, scenes/resources, addons, export presets.
- Custom engine: build files, executable entry points, rendering/input/audio dependencies, asset pipeline scripts.

Treat these as discovery clues, not proof that every listed feature or platform is active.

## Inspect

- repository and nested agent rules;
- engine/editor version and package/plugin locks;
- source versus generated/cache/output folders;
- startup scene/level and game-state transitions;
- input devices and action maps;
- render pipeline, shader locations, materials, and quality tiers;
- data assets, saves, serialization, and compatibility versioning;
- physics, animation, AI, audio, UI, localization, networking, and platform services when present;
- test assemblies/suites and automation;
- desktop, mobile, console, XR, or web build targets actually configured;
- CI/build scripts, signing references, and artifact locations without exposing secrets;
- known limitations, maintenance markers, warnings, and recent changes.

## Report Template

1. Repository purpose and current state.
2. Verified engine, version, packages, and targets.
3. Important folder/file map.
4. Startup and representative player flow.
5. Architecture and ownership boundaries.
6. Build/test/documented commands.
7. Legacy or fragile areas.
8. Unknowns and assumptions.
9. Recommended next step and checks.
