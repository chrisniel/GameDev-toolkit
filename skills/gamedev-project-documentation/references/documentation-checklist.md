# GameDev Documentation Checklist

Choose only sections useful to the intended reader.

## Developer Setup

- engine/editor and module versions;
- required SDKs/tools and package/plugin restore;
- repository clone/LFS/submodule notes when verified;
- project open, startup scene, local run, tests, and build commands;
- generated/cache/output folders that are not source.

## Project Map

- core game/domain systems and engine-facing components;
- scenes/levels, prefabs/entities, data/config, art/audio, shaders;
- input, UI, saves, networking/platform services;
- editor/content pipeline tools, tests, build automation;
- ownership and safe customization boundaries.

## Player And QA

- controls and supported input devices;
- main player journeys and game-state transitions;
- settings, accessibility, localization, save behavior;
- test setup, expected results, failure recovery, known limitations;
- performance/device matrix and manual check status.

## Build And Handoff

- supported target/configuration and quality tiers;
- environment-variable names and safe placeholders;
- signing/store steps assigned to authorized owners;
- artifact location/naming, symbols, logs, crash context;
- release limitations, rollback/save compatibility, troubleshooting.

## Maintenance Triggers

Update documentation when engine/packages, project structure, controls, scenes, serialization/saves, rendering pipeline, target platforms, build commands, diagnostics, or known limitations change.
