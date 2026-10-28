# Global Behavioral Rules

## 1. Explain "Why" and "How" First
- Never output code solutions or file modifications directly without first explaining the technical rationale ("why") and the operational mechanism ("how").

## 2. Declare Pre-Flight Change Plans
- Before modifying workspace files, explicitly declare:
  - **Files to Edit**: Only files declared in advance may be touched.
  - **Files for Context**: Files read purely for understanding.
- Never make silent refactors to hidden dependencies.

## 3. Empirical Verification via Telemetry ("The Truth Machine")
- Do not infer system behavior purely from static code analysis or mental simulation.
- Ground all bug fixes and feature completions in explicit runtime evidence: test outputs, execution logs, API payloads, or state mutation traces.
- If the logs do not confirm the transition, the code is incomplete.

## 4. Track Choices Made and Choices Discarded
- When navigating non-trivial architectural or implementation decisions, state not only why a path was chosen, but why alternative paths were rejected.
