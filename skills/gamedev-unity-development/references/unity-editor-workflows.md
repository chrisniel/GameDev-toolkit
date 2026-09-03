# Unity Editor Evidence Workflows

Use only the sections needed for the task. These instructions work without MCP and do not install or require any server.

## Choose An Available Path

| Session capabilities | What the agent can do | What remains unverified |
| --- | --- | --- |
| Supplied files/text only | Inspect supplied code and configuration; propose focused edits | Unseen project state, compilation, scenes, builds, and devices |
| Repository and shell | Inspect files, edit approved source, run verified existing commands | Live unsaved Editor state and any checks not actually run |
| User-operated Unity Editor | Give exact scene/menu/action steps and review returned logs or captures | The result until evidence or user confirmation arrives |
| Already-connected editor automation | Inspect its actual capabilities and schema; use authorized operations | Unsupported tools, unselected instances, and experiential judgment |

Choose per operation, not once for the whole project. Missing automation does not block code analysis or safe source edits. It does block claims about live state. A saved scene is not proof of the currently open scene; a shell being present is not proof Unity or its build modules are available.

## Establish A Fresh Context

Record the verified Unity version, project root, relevant scene/asset paths, rendering and input packages, target platform, and source of each finding. Mark missing information unknown rather than choosing URP, a new Input System, or a default scene by assumption.

For a live operation, confirm the intended Editor/project, active scene, Edit/Play mode, and compilation/import readiness. When several Editors exist, resolve the instance before acting; do not choose the first by name. Preserve unsaved work and ask the user to save or discard it deliberately when an operation would replace it.

Use asset paths and GUIDs for persistent assets. For scene targets, verify the scene, hierarchy path, and component; duplicate names require disambiguation. Re-resolve live instance IDs after reload/reopen instead of treating them as persistent identifiers.

## Script Edit And Compilation

1. Inspect the existing script, assembly boundaries, serialized fields, and consumers.
2. Apply the approved source change, preserving file identity and serialized references.
3. Let the existing import/compile workflow finish. If automation is already present, check its actual completion signal; do not assume every file-edit tool triggers a Unity refresh.
4. Review new compiler errors and relevant warnings against the pre-change baseline before attaching components or running dependent tests.
5. Recheck missing references and affected behavior after compilation. A syntax check outside Unity is not a Unity compilation result.

Without editor access, give the user this adapted checklist: open the verified project in its matching Unity version; let import/compilation finish; open the Console; report new errors with file/line and stack trace; open the exact affected scene or prefab and confirm its component fields. Keep the result pending until returned. Never clear the Console merely to make a failure disappear.

## Scenes, Greyboxing, And Packages

Inspect and preserve the existing prototype before building more content. Do not replace the current scene with an empty one merely because a template does so. New scenes, duplicate objects, and material assignments must have intentional destinations and ownership.

Prefer supported Editor operations for complex scenes, prefab overrides, physics setup, animation, lighting, and visual graphs. Do not substitute raw YAML or graph-JSON rewrites just because no MCP exists. Provide a focused manual setup when safe automation is unavailable.

Cinemachine, ProBuilder, UI Toolkit, uGUI, TMP, and rendering packages are conditional capabilities, not requirements. Reuse the project's chosen camera/UI/content workflow. Verify component names and property types against its installed version; upstream template values and enum numbers are not authoritative.

## Test Runs And Incomplete Results

Use existing Unity Test Runner or repository commands for the narrowest relevant EditMode/PlayMode tests. Record mode, filter, assembly, project/build, and result artifact.

When a runner returns a job ID, starting the job is not passing the tests. Follow its documented status interface with bounded waits. Retrieve all relevant result pages and failures, and distinguish passed, failed, canceled, timed out, unavailable, and no tests matched. Do not silently re-run a still-running job after a connection loss.

For manual execution, name the installed Test Runner window location verified for that project/version, the test mode and filter, and request the summary plus failure details. Tests can execute project code and write fixtures: use a safe test setup, not private player saves or production services.

## Visual And Performance Evidence

Capture the affected scene, object/material, camera or viewport, lighting, quality setting, resolution, and graphics API with the image. Use extra angles only when they answer a real question. A screenshot must come from the actual project state, not an imagined reconstruction.

For performance, request the relevant CPU/GPU timeline, allocations, memory capture, or frame/pass evidence through already-installed tools or the user. Record build/device and capture conditions. An unsupported GPU counter is unavailable, not zero cost. Editor rendering stats do not prove mobile or PC player performance.

Shader compilation, a visual comparison, and a device benchmark prove different things. Report each separately. For Shader Graph, inspect generated code for diagnosis but edit the supported source graph in the Editor.

## Recovery And Handoff

If the Editor is busy, disconnected, reloading, or showing a different project, stop dependent editor actions and continue only work that does not rely on that state. Refresh evidence after reconnecting. Do not loop indefinitely, reinstall packages, delete caches, or retry an uncertain mutation automatically.

Each handoff should name the operation, affected files/assets, evidence source and context, result, outstanding manual step, and recovery action. Separate observed facts from hypotheses; assign visual quality, audio, feel, and target-device judgment explicitly.

## Source

Adapted workflow ideas from CoplayDev Unity MCP v10.1.2, rewritten for MCP-free use with additional local safety guidance. The source inventory and complete MIT notice are in [source-notices.md](source-notices.md); keep that file with this skill when copying it.
