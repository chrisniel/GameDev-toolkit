# GameDev Failure Checklist

## Runtime States

- loading/startup failure;
- missing scene, asset, bundle, addressable/resource, shader, or localization entry;
- invalid serialized reference or configuration;
- save missing, corrupt, incompatible, partially written, or storage full;
- network offline, timeout, disconnect, duplicate response, or service maintenance;
- platform entitlement, sign-in, cloud save, achievement, or store failure;
- unsupported graphics/input/device feature;
- async/coroutine canceled by pause, disable, scene unload, quit, or retry;
- pool/resource exhaustion and memory pressure.

## Recovery Questions

- What state was mutated before failure?
- Can the action be retried safely?
- Is a checkpoint, backup, temporary file, or previous save available?
- What should the player see and do next?
- What context does a developer need to reproduce it?
- Which subscriptions, tasks, handles, temporary objects, and UI states must be cleaned?
- Does fallback preserve game rules and user choice?

## Verification

- success path remains unchanged;
- error path reaches a stable state;
- repeated retry/cancel does not duplicate state or leak resources;
- save/content remains recoverable;
- player message contains no sensitive diagnostics;
- logs correlate the failure without spamming every frame.
