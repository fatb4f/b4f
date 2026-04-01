# Notebook guidance

This directory holds marimo notebooks and notebook-adjacent Python experiments.

Use these conventions:

- treat notebooks as pure Python source
- prefer `uv run marimo edit <file>` for notebook editing
- prefer `uv run marimo run <file>` for execution
- keep cells small and reactive
- avoid hidden state and side-effectful imports unless the notebook explicitly needs them
- prefer typed, inspectable helpers in `src/` and import them into notebooks
- when Codex is used in this subtree, preserve notebook structure and do not rewrite cells into unrelated script shapes
