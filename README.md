# b4f

Back-to-code learning workbench for Python, TypeScript, contracts, and kernel-stack practice.

## Curriculum

- [`curriculum.kernel-execution.v1.md`](./curriculum.kernel-execution.v1.md): kernel and execution lane curriculum
- [`curriculum.v0.2.md`](./curriculum.v0.2.md): earlier revision kept for reference

## Setup

```bash
uv sync
npm install
```

Marimo is configured through [`marimo.toml`](./marimo.toml). For local editor integration, the VS Code extension uses `uv run marimo` from this workspace.

If you prefer one command surface, use `just`:

```bash
just sync
just run
just lint
just test
just py-typecheck
just ts-fmt
just ts-typecheck
just ts-test
```

For marimo notebooks, keep notebook files under [`notebooks/`](./notebooks) and use the notebook-local [`AGENTS.md`](./notebooks/AGENTS.md) as the Codex instruction surface.

The local terminal stack is documented in [`registry-style-user-guide.md`](./registry-style-user-guide.md).

## VS Code

Open the folder in VS Code and accept the recommended extensions. The workspace is tuned for:

- Python with Ruff formatting/linting
- TypeScript with the workspace TypeScript SDK
- marimo notebooks
- CUE, YAML, TOML, and Git context

## Tasks

Use the repo-local tasks in VS Code or run them directly:

```bash
just run
just fmt
just lint
just test
just py-typecheck
just ts-fmt
just ts-typecheck
just ts-test
```
