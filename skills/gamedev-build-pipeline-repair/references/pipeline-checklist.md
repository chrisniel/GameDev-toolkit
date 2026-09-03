# Game Build Pipeline Checklist

## Stages

- source checkout, submodules, Git LFS, large/binary assets;
- engine/editor installation, licensing/activation, modules;
- package/plugin restore and registry access;
- asset import, cache/accelerator, generated project files;
- script/native/shader compilation;
- unit/editor/play tests and result artifacts;
- scene/level/content inclusion and asset bundles/addressables/catalogs;
- target SDK/NDK/JDK/Xcode/toolchain and architecture;
- player settings, identifiers, versioning, stripping, symbols;
- certificates, provisioning, keystore/signing references;
- packaging, artifact naming, compression, checksums;
- upload, release, store, deployment, and notification gates.

## Evidence

- first meaningful error and surrounding log;
- exact engine and package/plugin versions;
- local versus runner environment difference;
- changed file/configuration that owns the stage;
- missing variable name without its secret value;
- cache key and invalidation behavior;
- artifact expected versus produced.

## Verification Labels

- Passed locally.
- Configuration validated only.
- Hosted rerun pending authorization.
- Platform signing/store step pending owner verification.
- Unable to reproduce because required approved tool/environment is unavailable.
