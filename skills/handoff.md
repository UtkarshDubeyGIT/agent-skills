# /handoff — Context Handoff

Invoked when the user types `/handoff`.

Purpose: Compress the current conversation into a portable handoff document.
Useful when switching agents, saving progress, or opening an issue.

## Output Format

Generate a markdown block with this structure:

```
## Context
<3-5 sentences: what are we building, what state is it in>

## Current State
<branch, uncommitted changes, test status>

## Decisions Made
- <decision 1>
- <decision 2>

## Key Files
- <path/to/file> — <what it contains / what changed>

## Open Questions
- <anything unresolved>

## Next Steps
1. <next step>
2. <next step>

## /handoff end
```

## Usage

- The agent outputs the handoff block.
- The user can copy it into another agent session, a GitHub issue, or DEVLOG.md.
- The block is designed to be read by another agent as a standalone context primer.

## Rules

- Keep each section brief. The whole handoff should fit in ~30 lines.
- Include file paths relative to project root.
- If this is a follow-up to a previous handoff, reference it.
