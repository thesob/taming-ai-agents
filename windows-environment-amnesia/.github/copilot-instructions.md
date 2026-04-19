# [Application name] - Agent Instructions

Welcome to the [Application name] project! Please adhere to the following guidelines and project context when responding to user requests, generating code, or running terminal commands.

## Architecture & Tech Stack

This project is a fullstack operational command center for accountants, organized as a monorepo using npm workspaces.

### 1. Frontend (`packages/client`)
- **Framework:** Vue 3 + Quasar CLI (Vite-based)
- **UI Architecture:** Material Design (via Quasar v2)
- **State Management:** Pinia v3
- **Routing:** Vue Router v4
- **HTTP Client:** Axios
- **Visualization:** ApexCharts
- **Testing:** Vitest & Vue Test Utils

### 2. Backend (`packages/server`)
- **Framework:** Express.js (v5) on Node.js (v20+)
- **Database Support:** Multiple integrations including MongoDB (Mongoose), MSSQL, and PostgreSQL connections.
- **Testing:** Jest + Supertest
- **Tooling:** Nodemon for development hot-reloading.

### 3. Docker Compose Setup
The application is containerized with two main services defined in `docker-compose.yml`:
- **server:** Runs the Node.js Express backend, exposed on port `3000`.
- **client:** Serves the Vue frontend using Nginx, exposed on port `8080`.
- **Network:** Both services are connected via an external shared `ai-network`.
- The `client` service depends on `server` being available.

## STRICT ENVIRONMENT RULES: WINDOWS 11 & POWERSHELL

**CRITICAL:** The user's development environment executes all terminal commands in **Windows PowerShell** (v5.1+ or Core). 

1. **No Linux Commands:** `sed`, `awk`, `grep`, `rm`, `cat`, and `export` will fail. DO NOT use them.
2. **File Manipulation is FORBIDDEN in Terminal:** DO NOT use PowerShell or CLI tools to manipulate file contents. 
3. **MANDATORY:** You MUST use your native VS Code tool calls (`replace_string_in_file`, `create_file`, `read_file`, `semantic_search`) to read, search, and edit files.
4. If you must run a script in the terminal, use strict PowerShell 5.1 syntax (e.g., `Get-ChildItem`, `Remove-Item`).
5. Chaining commands: Use `;` instead of `&&`.

## Workflow Guidelines
1. **Explore Before Editing:** Use your tools to read the `package.json` for custom scripts (e.g., `npm run dev:server`, `npm run dev:client`) before assuming command syntax.
2. **Path Context:** Remember you may need to navigate into `packages/client` or `packages/server` to run specific tasks, or use workspace commands from the root (`npm run <script> -w <package>`).
3. **Coding Standards:** Follow Vue 3 Composition API best practices for the client, and keep Express controllers/services properly separated on the server.