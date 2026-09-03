---
name: gamedev-ui-development
description: Build and review game menus, HUDs, settings, inventories, prompts, rebinding, navigation, responsive layouts, and accessible UI across keyboard, mouse, controller, touch, and target displays.
---

# GameDev UI Development

Create game UI that is readable, navigable, state-correct, and consistent with the existing visual language and input architecture.

## Workflow

1. Verify engine/version, UI framework, input system, target platforms, reference screens, typography/assets, localization, and existing navigation/focus patterns.
2. Define the player journey, entry/exit behavior, pause/time behavior, underlying game state, supported input devices, and success/error/empty/loading states.
3. Reuse existing components/styles and preserve scene/prefab/document ownership.
4. Separate presentation from game/domain state where the project architecture supports it.
5. Implement deterministic navigation and focus for keyboard/controller, usable pointer/touch targets, device switching, cancellation/back behavior, and visible selected/disabled states.
6. Handle safe areas, aspect ratios, resolution/UI scaling, text expansion, font fallback, color/contrast, reduced motion or other project accessibility settings.
7. Avoid rebuilding expensive UI every frame; update from state changes, virtualize/reuse large repeated elements when measured and supported, and clean subscriptions/listeners on disable/unload.
8. Test representative resolutions, input paths, localization lengths, pause/resume, repeated opening, and missing/empty/error states.

Read [references/ui-checklist.md](references/ui-checklist.md) for screen, form/settings, navigation, and verification checks.

## Rules

- Do not invent a new visual system when the project has one.
- Do not make pointer-only, color-only, hover-only, or fixed-resolution interactions without an approved platform constraint.
- Do not save settings on every frame or leave partially applied settings after cancel.
- Do not hand-edit complex editor-managed UI assets unless the repository has a verified safe text workflow.
- Do not claim readability, visual polish, accessibility, or device navigation passed without the appropriate observation.

## Output Contract

Report the player flow, UI/input context, states, layout/navigation/accessibility behavior, files/assets changed, checks run, manual display/device steps, and limitations.
