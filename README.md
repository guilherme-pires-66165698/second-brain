# Second Brain

Personal Knowledge Management for Software Development.

## Installation Options

### Option 1: Docker (Recommended)

Run Obsidian in browser with auto Git sync:

```bash
git clone https://github.com/guilherme-pires-66165698/second-brain.git
cd second-brain
docker-compose up -d
```

Access: http://localhost:8080

**Features:**
- Obsidian in browser
- Auto-sync with GitHub every 5 minutes
- No local installation needed

### Option 2: WSL + Windows Obsidian

```bash
curl -sSL https://raw.githubusercontent.com/guilherme-pires-66165698/second-brain/main/scripts/setup-wsl.sh | bash
source ~/.bashrc
```

**Commands:**
| Command | Action |
|---------|--------|
| `brain` | Go to ~/second-brain |
| `brain-sync` | Sync with GitHub |
| `brain-daily` | Create daily note |

**Obsidian (Windows):** Open as vault `\\wsl$\Ubuntu\home\<user>\second-brain`

---

## Install GitHub Copilot

### 1. VS Code Extension
1. Open VS Code
2. Go to Extensions (`Ctrl+Shift+X`)
3. Search "GitHub Copilot"
4. Install **GitHub Copilot** and **GitHub Copilot Chat**
5. Sign in with your GitHub account

### 2. Configure Copilot for Your Projects
Add `.github/copilot-instructions.md` to any project:

```markdown
# Copilot Instructions

Reference my second-brain for all coding tasks:
https://github.com/guilherme-pires-66165698/second-brain

## Before Writing Code
1. Read README.md for my preferences
2. Check 03-Resources/Languages/ for language patterns
3. Check 03-Resources/Frameworks/ for framework guides
4. Check 02-Areas/Development/coding-standards.md for standards

## My Preferences
- Type hints/annotations always
- Functional patterns when appropriate
- SOLID principles
- Error handling required
- Unit tests for new functions

## End of Session
Capture learnings using Templates/lesson-learned.md
```

### 3. Use Copilot with Second Brain
In Copilot Chat, you can reference your knowledge base:

```
@workspace Read my second-brain preferences from https://github.com/guilherme-pires-66165698/second-brain
```

---

## File Reference Guide

### Always Read First
- **README.md** (this file) - Overview and preferences
- **.github/copilot-instructions.md** - Detailed coding instructions

### By Task Type

| Task | Files to Read |
|------|---------------|
| **New Project Setup** | 01-Projects/templates/PROJECT_TEMPLATE.md |
| **Code Review** | 02-Areas/Development/coding-standards.md |
| **Python Code** | 03-Resources/Languages/python.md |
| **TypeScript Code** | 03-Resources/Languages/typescript.md |
| **API Development** | 03-Resources/Frameworks/fastapi.md |
| **Working on specific project** | 01-Projects/[project-name].md |

### My Coding Preferences
- Clean code with type hints/annotations
- Functional programming patterns when appropriate
- SOLID principles
- Composition over inheritance
- Self-documenting code, minimal comments
- Always include error handling
- Write unit tests for new functions

### Tech Stack
- **Python**: PEP 8, black, ruff, FastAPI, Pydantic
- **TypeScript**: ESLint, Prettier, strict mode
- **Infrastructure**: Docker, Proxmox, Tailscale

### Directory Structure

| Directory | Purpose |
|-----------|---------|
| .github/ | Copilot and GitHub configs |
| 00-Inbox/ | Unsorted notes and capture prompt |
| 01-Projects/ | Project documentation |
| 02-Areas/Development/ | Coding standards |
| 03-Resources/Languages/ | Language guides |
| 03-Resources/Frameworks/ | Framework guides |
| 03-Resources/Tools/ | Tool configs |
| 04-Archive/ | Completed/old projects |
| Templates/ | Note templates |

## Self-Improvement

See `02-Areas/Development/SELF_IMPROVEMENT.md` for how to keep this knowledge base updated.
