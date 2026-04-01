# Terminal Stack User Guide

## Stack

- `kitty`: outer launcher and project/session switcher
- `tmux`: persistent runtime and pane/session orchestration
- `nvim`: editing and language intelligence
- `yazi`: file-plane navigation, preview, and file handoff
- `codex`: agent CLI
- `marimo`: execution, replay, and evidence surface
- `CUE + Hof`: gating, planning, packet generation

## Source Files

- Kitty config: `~/.config/kitty/kitty.conf`
- Kitty session templates: `~/.config/kitty/sessions/*.conf`
- tmux config: `~/.tmux.conf`
- Neovim config: `~/.config/nvim`
- Yazi config: `~/.config/yazi/{yazi.toml,keymap.toml}`
- Codex config: `~/.config/codex/config.toml`

## Launch

- Open kitty for the project.
- Start or attach tmux through `kitty-project` or `tmux-project-layout`.
- Use `nvim` in the edit window.
- Use `marimo` in the runtime window.
- Use `codex` in the edit window when agent work is needed.
- Use `yazi` when filesystem traversal or bulk file operations are needed.

## Roles

- `kitty` owns project entry, tab titles, and outer shell context.
- `tmux` owns durable sessions, windows, and panes.
- `nvim` owns code edits, searches, tests, and LSP-driven work.
- `yazi` owns directory traversal, preview, and file handoff to `nvim`.
- `codex` owns terminal agent tasks and MCP-backed tools.
- `marimo` owns notebook execution and replay.

## Rules

- Do not use kitty, tmux, and nvim to manage the same pane-layout problem.
- Do not use yazi as a session manager or persistence layer.
- Do not use nvim as the outer terminal launcher.
- Keep project switching in kitty.
- Keep runtime state in tmux.
- Keep text editing in nvim.
- Keep file navigation in yazi.

## Yazi

- Use the `y` Fish function to enter a directory and return with cwd handoff.
- Yazi opens text-like files in `nvim`.
- Yazi uses tmux passthrough for image preview support.
- `EDITOR` is not the authority for Yazi file editing here; the Yazi opener rules are.

## tmux Layout

- Window `edit`: `nvim`, `codex`, shell
- Window `runtime`: `marimo`, tests/logs, artifact inspection
- Window `control`: `just plan`, `just implement`, Hof/CUE validation

## Key Settings

- kitty: pixel scroll, `goto_session`, relocatable session save, session title display
- tmux: `allow-passthrough on`, `extended-keys on`, `extended-keys-format csi-u`, focus events
- Yazi: natural sort, hidden files visible, preview wrap off, text handoff rules

## Useful Commands

- `y`: open Yazi with cwd handoff
- `kitty-project`: open kitty-backed project session
- `tmux-project-layout`: create or attach the tmux project layout
- `codex`: start the terminal agent
- `marimo edit <notebook.py>`: open the runtime notebook

## Notes

- The stack is terminal-first.
- kitty is the launcher.
- tmux is the runtime shell.
- nvim is the editor.
- yazi is the file operator.
- codex is the agent surface.
- marimo is the execution surface.
