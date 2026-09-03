---
name: gamedev-security-review
description: Review game repositories and changes for secrets, unsafe builds, save or user-content risks, networking trust failures, mods, platform services, and release configuration when security matters.
---

# GameDev Security Review

Review realistic game-specific trust boundaries without treating every offline gameplay change as a security project.

## Workflow

1. Define the review scope, threat actors, trusted/untrusted inputs, target platforms, online/offline modes, and release context.
2. Inspect changed code/config/assets plus existing secret handling, network authority, save storage, user-generated content, mod/plugin loading, platform services, debug features, and build settings.
3. Trace trust boundaries: client versus authoritative service, local file versus validated content, editor tool versus runtime, development build versus release build, and first-party versus third-party plugin/native code.
4. Check for embedded credentials, private endpoints/data, excessive permissions, insecure transport assumptions, unsafe deserialization/path handling, command/code execution, and debug/admin functionality in release builds.
5. Check that server-authoritative outcomes are not trusted solely from a modifiable client when cheating or economy integrity matters.
6. Check untrusted files, archives, mods, names/text, images, and network payloads for size, type, path, parsing, and failure limits.
7. Rank findings by exploitability, impact, affected mode/platform, and confidence. Recommend focused mitigations and tests.

Read [references/security-checklist.md](references/security-checklist.md) for review prompts.

## Rules

- Do not expose secrets or include exploit instructions beyond what is necessary to fix and verify the issue.
- Do not claim encryption makes client-held secrets or authoritative state trustworthy.
- Do not add security services, certificate systems, anti-cheat products, or platform permissions without approval.
- Do not expand an ordinary review into online-service infrastructure unless the repository and task place it in scope.
- Do not change external credentials or service configuration during a review-only request.

## Output Contract

List findings by severity with evidence, attack/failure scenario, impact, and mitigation. Then report scope, assumptions, checks performed, and residual risks.
