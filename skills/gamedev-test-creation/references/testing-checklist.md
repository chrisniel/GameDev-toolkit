# GameDev Testing Checklist

## Candidate Behaviors

- rules, calculations, cooldowns, damage, scoring, progression;
- state machines, pause/resume, win/loss, scene transitions;
- input mapping, device switching, focus, rebinding;
- physics queries and collision outcomes with controlled setup;
- AI decisions and deterministic path/rule cases;
- animation state requests, not subjective animation quality;
- inventory, quests, saves, version migration, missing/corrupt data recovery;
- UI navigation, settings persistence, localization expansion, safe-area behavior;
- asset importers, editor tools, configuration validators;
- multiplayer message/state handling with controlled doubles where possible;
- player build startup, required content, and platform configuration.

## Stability

- control random seeds and clocks;
- avoid fixed sleeps when a condition or engine yield is available;
- isolate persistent files and restore settings;
- clean spawned objects, subscriptions, jobs, handles, and temporary assets;
- keep scene and test ordering independent;
- separate performance benchmarks from correctness tests.

## Save Compatibility

- current version round-trip;
- oldest promised supported version;
- missing optional fields and added defaults;
- invalid version or corrupt payload handling;
- failed migration leaves original data recoverable when feasible;
- migration is idempotent or explicitly one-way and documented.

## Player Journey

Record preconditions, input/device, scene/state path, checkpoints, success result, failure recovery, persisted effects, and assigned manual visual/audio/feel checks.

## Runner Evidence

Record test mode, filter/assembly, environment, command or manual action, and the final result artifact. A started process/job is not a pass. Retrieve complete relevant results, including paginated failures where applicable. Separate cancellation, timeout, unavailable runner, and no matching tests from success.

For Unity, use the Unity specialization's editor workflow when available; otherwise specify the existing Test Runner/CLI path and request the result. Do not invent an MCP call or install a runner to satisfy the skill. Check fixture side effects before running tests.
