# Antigravity Skills Library

A curated collection of custom skills for Google Antigravity CLI (`agy`) and the Antigravity IDE.

## Included Skills

- **`architecture-diagrammer`**: Generates clean, laptop-width optimized Mermaid architecture diagrams and living documentation for Obsidian notes across repositories.
- **`product-feedback-synthesizer`**: Collects, categorizes, and synthesizes user feedback into prioritized engineering and product action items.

---

## Installation & Setup

To use these skills globally on any machine running the Antigravity CLI:

### 1. Clone the repository
```bash
git clone git@github.com:<username>/antigravity-skills.git ~/Developer/antigravity-skills
```

### 2. Symlink into Antigravity's global skills directory
```bash
# Ensure parent directory exists
mkdir -p ~/.gemini

# Symlink skills
ln -s ~/Developer/antigravity-skills ~/.gemini/skills
```

When you start `agy`, the skills will be automatically discovered and available for use in any project.
