# GameDev UI Checklist

## Screen States

- entry and exit source;
- initial, loading, populated, empty, disabled, error, confirmation;
- pause/time-scale behavior;
- game-state and save/settings synchronization;
- back/cancel and unsaved-change handling;
- repeated open/close and scene transition cleanup.

## Input And Navigation

- keyboard, mouse, controller, touch, handheld, XR pointer only when supported;
- predictable initial focus and focus restoration;
- visible hover/focus/pressed/disabled states;
- navigation order and no focus traps;
- device switching and glyph updates;
- rebinding conflicts, reserved actions, duplicate input, reset/defaults;
- touch target size and gesture alternative when applicable.

## Layout And Accessibility

- safe areas, notches, overscan, ultrawide, portrait/landscape as supported;
- project scaling mode and reference resolution;
- localization expansion, right-to-left behavior when supported, font fallback;
- contrast, color-blind independence, readable HUD hierarchy;
- text/subtitle size, captions, reduced motion/flashing, hold/toggle settings according to project scope;
- screen-reader or platform accessibility APIs only when the project supports them.

## Runtime Cost

- no unnecessary per-frame rebuild/layout/animation work;
- bounded list population and reusable rows where justified;
- subscriptions/listeners removed correctly;
- material/font/atlas use follows project conventions;
- no accidental save writes or allocations on every slider/input update.

## Manual Matrix

Record resolution/aspect ratio, language, input device, UI scale, safe-area simulation/device, expected result, observed result, and owner.
