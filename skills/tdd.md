# /tdd — Test-Driven Development Loop

Invoked when the user types `/tdd`.

Purpose: Build features using the Red-Green-Refactor cycle.
Produces tested, clean code with verifiable correctness at every step.

## Flow

Repeat this cycle for each unit of behavior:

### 1. RED — Write a failing test

- Write ONE test for ONE behavior.
- The test should fail because the code doesn't exist yet.
- Verify it fails: run the test and confirm red.

### 2. GREEN — Write minimal code to pass

- Write the minimum code needed to make the test pass.
- No extra abstractions, no "while we're here" improvements.
- Verify it passes: run the test and confirm green.

### 3. REFACTOR — Clean up

- Improve the code without changing behavior.
- Run the test suite to confirm everything still passes.
- Check for: duplication, unclear names, unnecessary complexity.

### 4. COMMIT

- Commit with a conventional commit message:
  - `test: add test for <behavior>` (after RED)
  - `feat: implement <behavior>` (after GREEN)
  - `refactor: simplify <module>` (after REFACTOR)
- Repeat from step 1 for the next behavior.

## Rules

- ONE test per cycle. No batch-testing.
- If a GREEN step takes more than 5 minutes, the test granularity is too coarse — split it.
- If a test passes before you write the implementation code, the test is wrong — fix it first.
