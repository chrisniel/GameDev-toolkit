# GameDev Refactor Checklist

## Preservation Contract

- player-visible rules and outcomes;
- movement/input response and timing;
- physics parameters and fixed-step behavior;
- animation transitions, audio cues, VFX, and camera behavior;
- save shape, stable IDs, and backward compatibility;
- public APIs, events, inspector fields, asset references, and editor workflows;
- platform/build behavior and performance envelope.

## Safe Targets

- extract engine-neutral calculations from lifecycle components;
- split orchestration from presentation and data;
- consolidate proven duplication without forcing unrelated systems together;
- replace unclear global access with explicit ownership when scope supports it;
- turn repeated project-specific patterns into prefabs, components, data assets, or utilities when reuse is real;
- remove code/assets only after text, serialized, reflection, addressable/resource, build, and editor references are considered.

## Verification

- existing and characterization tests pass;
- serialized data opens without missing references;
- representative scene/level/player flow matches baseline;
- pause/resume, disable/enable, reload, and save/load behave the same when relevant;
- performance is not materially worse;
- manual visual/audio/feel checks remain pending until observed.
