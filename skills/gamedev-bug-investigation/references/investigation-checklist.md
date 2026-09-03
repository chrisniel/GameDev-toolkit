# GameDev Bug Investigation Checklist

## Reproduction Evidence

- engine/editor and player-build version;
- platform, device, graphics API, quality tier, resolution, and input device;
- scene/level, game state, save version, character/loadout, and network mode;
- exact actions, frequency, expected result, actual result;
- logs, stack trace, screenshot/video, profiler marker, frame capture, or asset reference;
- whether the issue survives restart, scene reload, fresh save, or different device.

## Common Cause Areas

- lifecycle or execution order;
- stale/invalid serialized reference;
- duplicated event subscription or missed cleanup;
- race, async cancellation, coroutine lifetime, or scene unload;
- scaled/unscaled time or physics-step mismatch;
- pooled object not reset;
- state machine transition or save migration;
- input action map/focus conflict;
- animation event/root motion/rig mismatch;
- shader variant, render pipeline, unsupported GPU feature, or missing material;
- import/platform override or build stripping;
- configuration difference between editor and player.

## Regression Verification

For Unity, correlate the reproduction with the correct project, scene, Editor mode, compilation/import state, and fresh Console evidence. Use the Unity specialization for editor-specific procedures when available. Without live access, request the exact scene/hierarchy, errors, and relevant screenshot rather than reporting an unseen state. Re-resolve object identifiers after reload.

- original reproduction no longer fails;
- adjacent valid path still works;
- repeated use and rapid input do not accumulate state;
- pause/resume, disable/enable, unload/reload, and save/load are checked when relevant;
- no new errors, warnings, allocations, or performance regression appear in the affected path;
- target build/device and experiential checks have an explicit owner and status.
