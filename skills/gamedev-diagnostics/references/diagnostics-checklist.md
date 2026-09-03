# GameDev Diagnostics Checklist

## Useful Context

- game/build/content version and commit identifier when already available;
- engine version, platform/device tier, graphics API, quality level, resolution;
- scene/level/game state and subsystem;
- operation, state transition, non-sensitive entity/type identifier;
- result category, duration/count/size, handled versus fatal;
- save schema version without save contents;
- network mode and error category without credentials or payload data.

## Signal Choice

- assertion for violated developer invariant;
- warning/error for actionable exceptional state;
- structured event for aggregate operational behavior;
- counter/gauge for frequency or resource state;
- profiler marker for CPU/GPU timing boundaries;
- memory label/snapshot workflow for ownership questions;
- debug overlay for opt-in local reproduction;
- crash context for last-known state and build identity.

## Release Safety

- conditional compilation/config follows existing project patterns;
- logs are rate-limited and bounded;
- player/user data is minimized and redacted;
- remote collection has approval, consent, retention, and failure behavior;
- diagnostics do not change game rules or timing materially;
- support instructions explain how to collect and interpret the evidence.
