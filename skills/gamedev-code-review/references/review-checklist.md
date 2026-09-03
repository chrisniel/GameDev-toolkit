# GameDev Review Checklist

## Severity

- Critical: data loss, credential exposure, unauthorized release action, broadly broken build, or severe exploit.
- High: common-path crash, corrupted save, major gameplay break, unsupported target, or severe frame/memory regression.
- Medium: reachable incorrect state, lifecycle leak, platform-specific defect, accessibility failure, or missing important regression coverage.
- Low: narrow maintainability or documentation issue with concrete future cost.

## Review Areas

- acceptance criteria and behavior preservation;
- initialization, update order, enable/disable, pause, unload, destruction, cleanup;
- event/callback/coroutine/task/native-resource ownership;
- scene/prefab/entity/asset references and metadata;
- state machines, saves, migrations, deterministic behavior;
- input device switching, focus, rebinds, pause, UI navigation;
- CPU/GPU work, allocations, memory, loading, object pooling, draw/physics cost;
- shader pipeline/API/variant compatibility and visual fallbacks;
- editor versus player build behavior and platform defines;
- user content, networking, platform services, secrets, debug/release settings;
- unit/integration/play/build tests and honest manual verification;
- setup, controls, architecture, troubleshooting, and limitations documentation.

## Finding Format

```text
[Severity] Short title
Location: path and tight line/asset reference
Cause: evidence in the changed implementation
Impact: concrete player/developer/build scenario
Fix: focused recommendation
```
