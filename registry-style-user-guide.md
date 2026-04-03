# Local Stack User Guide

## Stack

- `kitty`: outer launcher and project/session switcher.
- `fish`: shell glue, cwd handoff, and repo-local launch helpers.
- `tmux`: persistent runtime and pane/session orchestration.
- `nvim`: editing and language intelligence.
- `yazi`: file-plane navigation, preview, and file handoff.
- `codex`: terminal agent surface.
- `marimo`: execution, replay, and evidence surface.
- `CUE + Hof`: gating, planning, and packet generation.

## Source Files

- Kitty config: `~/.config/kitty/kitty.conf`
- Kitty session templates: `~/.config/kitty/sessions/*.conf`
- Fish functions: `~/.config/fish/functions/*.fish`
- tmux config: `~/.tmux.conf`
- Neovim config: `~/.config/nvim`
- Yazi config: `~/.config/yazi/{yazi.toml,keymap.toml}`
- Codex config: `~/.config/codex/config.toml`

## Entry Flow

1. Open `kitty` for the project.
2. Attach or create `tmux` with `kitty-project` or `tmux-project-layout`.
3. Use `nvim` in the edit window.
4. Use `marimo` in the runtime window.
5. Use `codex` in the edit window when agent work is needed.
6. Use `yazi` when filesystem traversal or bulk file operations are needed.

## Roles

- `kitty` owns project entry, tab titles, and outer shell context.
- `fish` owns shell wrappers and cwd handoff.
- `tmux` owns durable sessions, windows, and panes.
- `nvim` owns code edits, searches, tests, and LSP-driven work.
- `yazi` owns directory traversal, preview, and file handoff to `nvim`.
- `codex` owns terminal agent tasks and MCP-backed tools.
- `marimo` owns notebook execution and replay.

## Rules

- Do not use `kitty`, `tmux`, and `nvim` to manage the same pane-layout problem.
- Do not use `yazi` as a session manager or persistence layer.
- Do not use `nvim` as the outer terminal launcher.
- Keep project switching in `kitty`.
- Keep runtime state in `tmux`.
- Keep shell glue in `fish`.
- Keep text editing in `nvim`.
- Keep file navigation in `yazi`.

## Fish

- Use the `y` function to open Yazi and return with cwd handoff.
- Use `kitty-project` to enter the current project through kitty session logic.
- Use `tmux-project-layout` to build the standard `edit` / `runtime` / `control` tmux windows.
- Keep shell helpers thin; they should launch tools, not own state.

## Yazi

- Yazi opens text-like files in `nvim`.
- Yazi uses tmux passthrough for image preview support.
- `EDITOR` is not the authority for Yazi file editing here; the Yazi opener rules are.
- Use Yazi for subtree navigation, preview, and bulk file operations.

## tmux Layout

- Window `edit`: `nvim`, `codex`, shell.
- Window `runtime`: `marimo`, tests/logs, artifact inspection.
- Window `control`: `just sync`, `just py-typecheck`, Hof/CUE validation.

## Key Settings

- kitty: pixel scroll, `goto_session`, relocatable session save, session title display.
- fish: `y` wrapper with cwd handoff.
- tmux: `allow-passthrough on`, `extended-keys on`, `extended-keys-format csi-u`, focus events.
- Yazi: natural sort, hidden files visible, preview wrap off, text handoff rules.
- Neovim: LazyVim, Treesitter, `ty`, `ruff`, `marimo`, and the `snacks.image` health path.

## Useful Commands

- `y`: open Yazi with cwd handoff.
- `kitty-project`: open kitty-backed project session.
- `tmux-project-layout`: create or attach the tmux project layout.
- `nvim`: start the editor.
- `codex`: start the terminal agent.
- `marimo edit <notebook.py>`: open the runtime notebook.
- `just py-typecheck`: run `ty` in the project.

## Notes

- The stack is terminal-first.
- `kitty` is the launcher.
- `fish` is the shell glue.
- `tmux` is the runtime shell.
- `nvim` is the editor.
- `yazi` is the file operator.
- `codex` is the agent surface.
- `marimo` is the execution surface.
