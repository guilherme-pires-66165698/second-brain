# Second Brain

Personal Knowledge Management for Software Development.

## For GitHub Copilot - File Reference Guide

When helping me with code, consult these files based on the task:

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
| 00-Inbox/ | Unsorted notes |
| 01-Projects/ | Project documentation |
| 02-Areas/Development/ | Coding standards |
| 03-Resources/Languages/ | Language guides |
| 03-Resources/Frameworks/ | Framework guides |
| 03-Resources/Tools/ | Tool configs |
| 04-Archive/ | Completed/old projects |
