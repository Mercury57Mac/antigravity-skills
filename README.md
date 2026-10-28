# Antigravity Skills & Agent Harness

A curated collection of global behavioral rules and custom skills for the Google Antigravity CLI (`agy`) and Antigravity IDE.

## Repository Contents

* **[`GEMINI.md`](./GEMINI.md)**: Global behavioral guidelines enforcing technical rationale and architectural explanations before code implementation.
* **`skills/`**: Custom agent skills:
  * **[`deliberate-engineer`](./skills/deliberate-engineer/SKILL.md)**: Guides disciplined engineering via before/after inventories, downstream impact blueprints, runtime log verification ("truth machine"), and continuous decision logging (including rejected alternatives).
  * **[`architecture-diagrammer`](./skills/architecture-diagrammer/SKILL.md)**: Generates clean, laptop-width optimized Mermaid architecture diagrams and living Obsidian notes.
  * **[`product-feedback-synthesizer`](./skills/product-feedback-synthesizer/SKILL.md)**: Collects and synthesizes qualitative feedback into prioritized engineering action items.
  * **[`technical-career-strategist`](./skills/technical-career-strategist/SKILL.md)**: Aligns resumes and drafts high-impact technical cover letters from personal project notes.
* **[`setup.sh`](./setup.sh)**: One-command symlink installation script.

---

## Installation & Setup on Any Machine

To activate this harness on a new or work machine:

```bash
# 1. Clone the repository
git clone git@github.com:<username>/antigravity-skills.git ~/Developer/antigravity-skills
cd ~/Developer/antigravity-skills

# 2. Run the automated symlink setup script
./setup.sh
```

When you launch `agy`, your rules and skills will be automatically discovered and active.
