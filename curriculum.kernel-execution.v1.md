# Kernel and Execution Lane Curriculum

**Date:** 2026-04-01
**Scope root:** `/home/_404/src/b4f`

## Goal

Build practical fluency in the kernel surface and the execution lane.

The curriculum treats:

- `CUE + Hof` as the kernel layer
- `marimo` as the execution lane
- Python as the primary implementation language
- TypeScript as a support language for tools and inspectors

## Reference Set

- `Cuetorials`: CUE validation, import, JSON Schema conversion, generation, modules/packages, scripts/tasks, flow engine, custom attributes
- `Hofstadter getting started`: code generation, creators, task engine, data layer, `#hof` / `@attributes`, custom code, diff, regen, model history
- `marimo-team/learn`: notebook-based course structure and buildable educational notebooks
- `marimo-team/marimo-pair`: experimental pair-programming skill for marimo notebooks

## Kernel

The kernel is the contract and gating layer.

It owns:

- package and module boundaries
- schema validation
- imported configuration normalization
- generated projections
- task and flow wiring
- `#hof` metadata for discovery
- regression and promotion checks

## Execution Lane

The execution lane is the notebook and replay layer.

It owns:

- marimo notebooks as pure Python
- notebook-local guidance
- typed helpers imported from `src/`
- replay and evidence capture
- pair-programming sessions with `marimo-pair`

## Track 1

### CUE Fluency

Objective:
- normalize raw input into CUE-backed contracts

Exercises:

1. Import one existing config or JSON artifact into CUE.
2. Validate the imported artifact against a small contract family.
3. Convert one JSON Schema into a CUE definition.

Required output:
- one contract package
- one validation report
- one short note explaining the normalized shape

Exit gate:
- the contract validates a real artifact
- the normalized shape is reusable
- the note distinguishes raw input from normalized input

## Track 2

### Hof Fluency

Objective:
- use Hof for generation, tasks, and regen-safe projections

Exercises:

1. Define one `#hof`-marked root.
2. Add one generator or task.
3. Produce one generated artifact from a validated source.
4. Preserve a user edit across a regen cycle.

Required output:
- one generator or task
- one generated artifact
- one regen-safe diff

Exit gate:
- the source and generated artifact round-trip cleanly
- regen does not destroy local edits
- the `#hof` root is discoverable from the source tree

## Track 3

### marimo Fluency

Objective:
- use marimo as the execution lane for notebook-based work

Exercises:

1. Create one notebook that loads the kernel contract.
2. Display one validation or normalization result in the notebook.
3. Keep notebook cells small, typed, and reactive.
4. Export or replay one notebook run.

Required output:
- one runnable marimo notebook
- one replayable artifact or report

Exit gate:
- the notebook runs end to end
- the notebook reflects kernel output instead of duplicating kernel truth
- replay is usable for inspection

## Track 4

### marimo Pairing

Objective:
- use `marimo-pair` for notebook-first pairing sessions

Exercises:

1. Run a notebook with `--no-token --no-skew-protection`.
2. Install or invoke the `marimo-pair` skill.
3. Use the pairing flow to inspect and modify one notebook.

Required output:
- one paired notebook session
- one small notebook patch or refinement

Exit gate:
- the notebook remains runnable after pairing
- notebook structure stays intact
- the pairing workflow stays inside the execution lane

## Capstone

Build one kernel-defined contract family and one marimo notebook that:

- imports a raw artifact
- normalizes it through CUE
- validates it through Hof-backed gating
- renders a concise report
- can be replayed
- can be pair-edited in marimo

## Working Rules

- Keep the kernel authoritative.
- Keep marimo as the execution surface, not the truth surface.
- Keep notebooks thin.
- Use Python first.
- Use TypeScript only when it reduces friction.
- Prefer real artifacts over toy exercises.

## Deliverables

- one CUE contract package
- one Hof generator or task
- one marimo notebook
- one pair-programming notebook session
- one short note describing the kernel / execution-lane split
