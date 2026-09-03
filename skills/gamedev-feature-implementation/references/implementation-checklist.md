# GameDev Feature Implementation Checklist

Use only the sections relevant to the approved feature.

## Context

- Engine/editor version and packages/plugins verified.
- Target platforms, input methods, quality tiers, and build configuration identified.
- Similar feature and repository conventions inspected.
- Approved criteria and behavior to preserve recorded.

## Affected Areas

- gameplay rules, state machines, progression, inventory, quests, abilities;
- physics, AI, pathfinding, animation, audio, cameras, input;
- scenes/levels, prefabs/entities, serialized assets, data/config;
- menus, HUD, settings, localization, accessibility;
- rendering, shaders, particles/VFX, lighting;
- save/load, version compatibility, networking, platform services;
- editor tools, import/content pipelines, builds, tests, documentation.

## Lifecycle And State

- Define ownership and initialization order.
- Handle disable, destruction, cancellation, scene unload, and repeated use.
- Clean event subscriptions, callbacks, coroutines/tasks, native handles, and pooled state.
- Choose scaled versus unscaled time deliberately.
- Keep runtime and editor-only code separated.

## Data And Compatibility

- Validate required references and ranges.
- Preserve stable identifiers and asset links.
- Version persistent data when shape or meaning changes.
- Test older or missing data when compatibility is promised.
- Avoid silent destructive conversion.

## Verification

- Compile/static validation.
- Unit/EditMode tests for isolated logic.
- Integration/PlayMode tests for runtime wiring.
- Build or platform check when configuration changes.
- Exact manual steps for visuals, audio, animation, feel, editor setup, and devices.

Record what was measured, what was observed, and what remains pending.
