# /grill-me — Alignment Interview

Invoked when the user types `/grill-me`.

Purpose: Align with the user on what they're building before any code is written.
This prevents wasted work from misunderstood requirements.

## Flow

1. Ask the user ONE question at a time. Wait for their answer before asking the next.
2. Cover these areas in order:

   **Goal:** What are you building? What's the end state?
   **Scope:** What's in scope? What's explicitly out of scope?
   **Constraints:** Any tech, time, or design constraints?
   **Architecture:** Any architectural decisions already made?
   **Edge cases:** What could go wrong? How should failures behave?
   **Success criteria:** How will we know this is done?

3. After gathering answers, synthesize into:

   ```
   ## Aligned Understanding

   **What:** 2-3 sentence summary of what we're building.
   **Out of scope:** What we're NOT doing.
   **Architecture decisions:** Key choices made.
   **Unknowns:** What I still don't know (if anything).
   **First step:** The first thing I'll do.

   /grill-me complete. Proceed? (y/n)
   ```

4. Wait for explicit confirmation before writing any code.
