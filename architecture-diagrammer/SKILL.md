---
name: architecture-diagrammer
description: Generates clean, laptop-width optimized Mermaid architecture diagrams and living technical documentation for Obsidian notes across any repository.
---

# Architecture Diagrammer Skill

## Purpose
This skill teaches the agent how to inspect repository code and generate technical architecture notes and Mermaid diagrams formatted specifically for Obsidian reading on laptop screens.

## Output Target
- **Vault Directory**: `/Users/macallumharvey/Desktop/Obsidian Notes/{REPO NAME}/` (or `Personal Projects/` as organized in the vault)
- **Primary Note**: `{REPO NAME}.md` (and related topic-specific markdown notes)
- **Living Documentation Rule**: Create modular deep-dive notes whenever a subsystem is complex. Always link child notes back to the parent note using Obsidian `[[wikilinks]]`.

---

## Diagram Formatting Constraints (Laptop-Friendly)

### 1. Single-Column Vertical Flow (Strict Width Constraint)
* **Never allow horizontal sprawling**: Mermaid's default Dagre engine places unchained subgraphs side-by-side horizontally, stretching diagrams across wide viewports.
* **Force vertical stacking**:
  * Always use `flowchart TD` (Top-Down).
  * Declare `direction TB` inside every `subgraph`.
  * Ensure sequential inter-layer links connect one layer to the next (e.g., `Layer1 --> Layer2 --> Layer3`), forcing the layout engine into a single vertical column (~400–600px wide).
* Maintain a maximum width of 1 to 2 nodes across at any horizontal point.

### 2. Node Label Wrapping & Line Length
* Never let node text extend across a single long line.
* Wrap text every 25–30 characters using `<br/>`.
* Keep edge transition labels concise (1–4 words).

### 3. Obsidian Mermaid Syntax Safeguards
* **Quote Edge Labels with Parentheses**:
  * Always wrap edge labels with double quotes if they contain parentheses, colons, or punctuation:
    * Correct: `-->|"Input Tensor (1, 73)"|`
    * Wrong: `-->|Input Tensor (1, 73)|` (triggers lexer error `got 'PS'`)
* **Standard ASCII Arrows**:
  * Use `->` instead of unicode symbols like `➔` inside node definitions to prevent rendering glitches across Obsidian themes.
* **Quote Node Labels**:
  * Always wrap node text strings in double quotes: `Node["Label Text<br/>Details"]`.

---

## Standard Workflow
1. **Explain First**: Provide a clear technical explanation and architectural rationale before generating diagrams or writing code changes.
2. **Inspect Codebase**: Analyze modules, imports, data flows, and state machines across the active workspace.
3. **Format Diagram**: Apply the single-column vertical stacking and label wrapping rules above.
4. **Persist to Obsidian**: Write directly to the user's Obsidian vault markdown notes with cross-links.
