# Using The Skills Across Clients

Updated 2026-09-03. This guide covers local Codex clients, Claude Code, and Gemini CLI. Choosing a Gemini or Claude model alone does not install skills, grant filesystem access, or supply Unity tools. Native discovery depends on the application and its version.

The same complete skill folders are the source for every client. No MCP is required. `agents/openai.yaml` is optional Codex metadata, not a workflow dependency for other clients.

## Local Client Setup

Copy only the selected complete folders from this repository's `skills/` directory into the relevant game project's location below. These are instructions for a separately authorized/user-owned setup; this delivery installs nothing.

| Client | Project-local destination | How to select/check |
| --- | --- | --- |
| Codex | `.agents/skills/<skill-name>/SKILL.md` | Mention `$gamedev-repo-onboarding` in a supporting client or use its skill selector. |
| Claude Code | `.claude/skills/<skill-name>/SKILL.md` | Invoke `/gamedev-repo-onboarding` or ask a matching natural-language question. |
| Gemini CLI | `.gemini/skills/<skill-name>/SKILL.md` | Check `/skills list`, then ask “Use gamedev-repo-onboarding to inspect this project.” |

Codex's current documentation specifies `.agents/skills` for repository skills. Existing installations in older/configured locations should be inventoried before moving anything. [Official Codex guide](https://learn.chatgpt.com/docs/build-skills).

Claude Code documents project `.claude/skills` folders and slash invocation. Same-name personal skills can override project copies, so verify which file was selected. [Official Claude Code guide](https://code.claude.com/docs/en/skills).

Gemini CLI documents `.gemini/skills` and the `.agents/skills` alias, `/skills reload`, and activation consent. Use one intended copy per scope, not duplicate copies in both aliases. Workspace skills require a trusted workspace; inspect the repository before granting trust. [Management guide](https://geminicli.com/docs/cli/using-agent-skills/), [discovery troubleshooting](https://geminicli.com/docs/cli/tutorials/skills-getting-started/).

## Preserve The Whole Folder

1. Choose the skill for the current task and any genuinely needed supporting skills.
2. Inspect the destination for an existing same-name folder; compare it before replacing it.
3. Copy `SKILL.md`, its references, optional metadata, and any bundled notices together. Keep the `gamedev-` names unchanged.
4. Do not copy this toolkit's populated tracking documents into a game. Use the game's existing rules and tracking, or configure the blank starter-kit templates separately.
5. Verify discovery and ask the agent to identify the loaded skill and relevant reference paths. Use the client's documented refresh/restart flow if needed.

Keep copied skills private. In particular, do not accidentally publish them with a public Kumpuni repository. Review its visibility, ignore rules, and provider data-sharing settings before copying/uploading permission-restricted content. The [provenance restrictions](provenance.md) still apply across clients.

## First Kumpuni Session

After making the chosen folders available in the game workspace, use:

```text
Use gamedev-repo-onboarding and, if available, gamedev-unity-development.
Read this project's current rules and tracking documents first.
Inspect the existing Kumpuni prototype without changing it.
Report the verified Unity version, input/rendering setup, scenes and prefabs,
existing gameplay entry points, and available checks.
No MCP is required. Do not install one.
Separate repository facts from live Editor state you cannot observe.
Recommend the smallest next task and list the manual evidence you need.
```

Do not assume clients automatically load identical rule filenames. The explicit request to read the project's rules avoids depending on that assumption. Add a persistent client-specific instruction file only as a separate deliberate setup, without duplicating conflicting project policy.

For implementation later, select the feature, UI, shader, bug, test, or performance skill according to the task. Keep Kumpuni-specific scene names, budgets, controls, and design choices in the game project, not in these reusable skills.

## Chat Or API Without Native Skill Loading

Supply the selected `SKILL.md` and only its relevant supporting references as context, subject to the material's sharing permissions. Ask the model to follow that workflow and state which project files/tools it can access. If it cannot open referenced files, provide those files or keep the missing evidence explicit. Neither dollar nor slash syntax grants capabilities to a raw model/API or ordinary chat.

Do not upload the whole private toolkit or game unnecessarily. No claim is made here that every Claude/Gemini chat product supports native skill installation.

## Manual Cross-Client Verification

All live-client and Kumpuni results below are pending user verification. Record client/version, skill path, prompt, outcome, and any mismatch.

| Scenario | Expected observable behavior |
| --- | --- |
| Run the onboarding prompt above with no MCP | Uses accessible files, reports unknown live state, does not request MCP installation as a prerequisite. |
| Request a small change to an existing greybox | Preserves existing scene/content and explains exact manual Editor setup when necessary. |
| Request a Shader Graph edit without Editor access | Does not blindly rewrite graph serialization or claim compilation/visual success. |
| Request optimization without a capture | Separates hypotheses from measurements; does not ban Update or Destroy categorically. |
| Provide a running/canceled test job or zero matched tests | Does not report tests passed without a final successful result. |
| Ask in plain chat with no project files | Requests relevant files/evidence rather than inventing project facts. |

Structural validation confirms packaging, not equivalent behavior across models. Keep real-client acceptance pending until you perform these checks.
