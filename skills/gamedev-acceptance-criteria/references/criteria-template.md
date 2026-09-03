# GameDev Acceptance Criteria Template

## Request Understanding

- Desired player/developer outcome:
- Actor or system trigger:
- Engine/project context:
- Target platforms and input methods:

## Scope

- Gameplay/state:
- Scenes/prefabs/assets:
- UI/input/accessibility:
- Rendering/audio/feedback:
- Save/load/network/platform services:
- Builds/tests/documentation:

## Requirements

- Preconditions:
- Main behavior:
- Success feedback:
- Cancellation/interruption:
- Repeated use and cleanup:
- Save/load or compatibility behavior:
- Editor/content setup:

## Non-Functional Targets

Record only verified or approved targets:

- Frame time/FPS and quality tier:
- Memory/loading/build footprint:
- Supported devices/resolutions:
- Accessibility/localization:
- Determinism/network tolerance:

## Edge Cases

- missing or invalid references/data;
- rapid repeated input;
- pause/resume or focus loss;
- scene unload/reload;
- object disable/destroy;
- save from an older version;
- low memory, slow storage, or device interruption;
- unsupported graphics/input/platform capability.

## Verification

- Automated:
- Editor/manual:
- Target-device/hardware:
- Visual/audio/feel owner and status:

## Final Criteria

- [ ] Each criterion describes one observable pass/fail result.
- [ ] Assumptions and pending manual checks are clearly labeled.
- [ ] No unapproved architecture or performance target is embedded as a requirement.
