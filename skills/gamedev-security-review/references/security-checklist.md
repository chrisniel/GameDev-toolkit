# GameDev Security Review Checklist

## Repository And Build

- tokens, API keys, certificates, signing material, private endpoints, debug credentials;
- development consoles, cheats, admin tools, verbose logs, symbols, test accounts in release;
- third-party packages/plugins/native libraries and update provenance;
- platform permissions, deep links, command-line arguments, environment/config overrides;
- build/upload scripts and artifact exposure.

## Runtime Trust

- client-authoritative currency, inventory, progression, ranking, or purchases;
- replay, duplication, race, or repeated-reward paths;
- network message validation, rate/size limits, sequencing, authentication boundary;
- local saves/settings/cache and tamper expectations;
- cloud-save conflict and overwrite behavior;
- platform identity, entitlement, achievement, leaderboard, and store callbacks.

## Untrusted Content

- mods/plugins/scripts and dynamic loading;
- archives and path traversal;
- file type, size, dimensions, decompression, parser, and memory limits;
- user names/chat/text localization and markup injection;
- downloaded assets/bundles/catalogs and integrity/version checks.

## Reporting

For each finding record location, preconditions, affected build/mode, concrete impact, confidence, mitigation, verification, and any server-side follow-up that belongs to a separate backend skill.
