## Revised Curriculum

This revision keeps the original curriculum’s core intent—real surfaces, real artifacts, spec-first work, and narrow Rust re-entry—but reorganizes it around the components that actually drive daily workflows. 

# Back To Code Curriculum — Revised

**Date:** 2026-03-16
**Scope root:** `/home/_404/src/b4f`
**Working directory:** `/home/_404/src/b4f`

## Goal

Restore coding fluency by working directly on the current stack, not on toy exercises.

This curriculum assumes:

* recent coding fluency is low
* the workbench is stable enough to learn on real surfaces
* the objective is practical capability, not broad survey learning
* specs, contracts, and observable artifacts are first-class work products 

---

## Organizing Model

The curriculum is split into two tracks plus one supporting reference layer.

### Base

**Implies `codex app-server`**

Daily workflow surfaces:

* Python + `agents-sdk-python`
* TypeScript + `agents-sdk-js`
* JSON Schema, manifests, contracts
* feedback, feedforward, regression
* protocol traces, item/event models, routing boundaries

### Advanced

**Implies `codex app-server`**

Internal implementation surface:

* Rust
* `codex app-server`
* narrow event tracing
* focused test modification
* small observable patches

### Reference Layer

Use as support, not as the main spine:

* OpenAI docs for authoritative behavior
* OpenAI Cookbook for worked examples and patterns
* existing repos, traces, and artifacts as the primary workbench

---

## Operating Principles

* Use real repos, real artifacts, and real protocol traces.
* Keep one primary language in focus at a time.
* End every module with a runnable artifact, tested patch, or validated contract.
* Prefer small vertical slices over broad reading.
* Learn the system by modifying and observing it.
* Treat specs and schemas as first-class code. 

Additional rules for this revised version:

* Control theory is part of **base**, not a separate advanced topic.
* Orchestration is learned by building one narrow workflow, not by surveying many frameworks.
* Rust work starts only after base fluency is back.
* Each phase has an explicit exit gate.
* Capstone is selected now, not at the end.

---

## Preselected Capstone

### Capstone: `app-server` event normalizer

Why this one:

* it reuses transcript and protocol work from base
* it forces manifest/schema discipline
* it creates a clear bridge into Rust internals
* it supports control hooks, routing, and regression checks

This is the convergence target for the full curriculum.

---

# Curriculum Structure

## Stage 1 — Base Fluency

**Weeks 1–4**
**Primary languages:** Python, TypeScript, JSON Schema

### Objective

Regain fast execution fluency on the daily workflow surfaces.

### Focus

* parse `app-server` transcripts
* classify protocol traffic
* inspect schemas and item/event types
* build small tools in Python and TypeScript
* start expressing artifact shapes mechanically

### Exercises

1. Build a Python transcript summarizer.

   * input: captured JSON-RPC or `app-server` logs
   * output: per-thread and per-turn summaries

2. Build a protocol classifier.

   * classify requests, responses, notifications, approvals, tool calls

3. Build a TypeScript schema explorer.

   * input: generated protocol or item schema
   * output: searchable summary of methods, events, and item types

4. Define one artifact family for the capstone path.

   * example: normalized event artifact set
   * add JSON Schema

### Required outputs

* one Python tool
* one TypeScript tool
* one schema set
* one short note defining:

  * thread
  * turn
  * item
  * event
  * local `app-server` traffic vs direct network traffic

### Exit gate

Move on only if all are true:

* Python tool runs on real input
* TypeScript tool answers at least 3 fixed schema questions
* one schema validates one real artifact family
* terminology note is internally consistent
* no unresolved confusion about thread/turn/item/event boundaries

### Illegal moves

* no Rust changes
* no greenfield framework work
* no UI work
* no broad SDK comparison writeups

---

## Stage 2 — Base Control

**Weeks 5–8**
**Primary languages:** JSON Schema, manifests, Python or TypeScript

### Objective

Make control semantics part of normal workflow work.

### Focus

* manifests
* contracts
* validation
* feedback loops
* feedforward checks
* regression harnesses
* routing and delegation boundaries

### Exercises

1. Define one manifest/contract family for normalized events.

   * event identity
   * source
   * shape version
   * normalization status
   * validation status

2. Add one regression harness.

   * fixed sample inputs
   * expected normalized outputs
   * diff-based failure mode

3. Build one small orchestrator experiment using one primary SDK surface.

   * choose Python or TypeScript
   * keep it local and inspectable

4. Write one routing/control note.

   * when work stays local
   * when it crosses a boundary
   * what is lost in translation across surfaces

5. Add one guardrail or hook.

   * input validation
   * acceptance check
   * promotion check
   * routing gate

### Required outputs

* one manifest/contract family
* one validation harness
* one small orchestrator prototype
* one routing/control note
* one runnable gate or hook

### Exit gate

Move on only if all are true:

* at least one artifact family is mechanically validated
* at least one regression check catches a real failure
* orchestrator prototype is inspectable and deterministic enough to debug
* one gate meaningfully blocks bad input or invalid state
* control note clearly defines one boundary and one lossiness mode

### Illegal moves

* no comparison across 4 orchestration surfaces
* no vague control-theory essay detached from code
* no second artifact family unless the first one is stable
* no Rust patching before the base contract is clear

---

## Stage 3 — Advanced Rust Re-entry

**Weeks 9–10**
**Primary language:** Rust

### Objective

Re-enter Rust through narrow `app-server` paths that support the capstone.

### Focus

* trace one event path end to end
* modify one focused test
* make one small observable patch
* validate via tests or runtime evidence

### Exercises

1. Trace one normalized-event-relevant path end to end.

   * protocol type
   * server handling
   * core path
   * emitted item/event

2. Modify or extend one focused test.

   * use existing tests as the anchor

3. Make one small code change.

   * non-architectural
   * observable
   * tied to the capstone path

### Required outputs

* one event-trace note
* one Rust test change
* one small Rust patch
* one validation note with observed behavior

### Exit gate

Move on only if all are true:

* one event path is understood from type to emission
* one test was changed or added successfully
* one patch is observable in behavior or output
* no architecture redesign was introduced

### Illegal moves

* no large Rust refactors
* no new subsystem invention
* no switching to unrelated Rust learning
* no patch without test or runtime evidence

---

## Stage 4 — Capstone Vertical Slice

**Weeks 11–12**
**Primary languages:** mixed, but bounded by the capstone

### Objective

Ship one complete vertical slice: **`app-server` event normalizer**

### Capstone scope

Build a complete slice that:

* ingests real event or transcript material
* normalizes it into one contract-defined artifact family
* validates output mechanically
* exposes at least one control surface
* is observable and regression-tested

### Minimum required properties

* spec-defined
* contract-validated
* runnable
* observable
* regression-checked
* reviewed

### Required outputs

* one normalization pipeline
* one manifest/contract package
* one regression suite
* one control hook or gate
* one review note describing:

  * input boundary
  * normalization rules
  * lossiness points
  * validation strategy
  * promotion criteria

### Exit gate

Done only if all are true:

* real input produces normalized output
* invalid input fails mechanically
* regression suite passes on known-good samples
* at least one observable trace or log proves behavior
* the slice can be explained end to end without hand-waving

---

# Weekly Cadence

## Week 1

* Python transcript parser
* protocol classification

## Week 2

* TypeScript schema explorer
* trace terminology note

## Week 3

* define normalized-event artifact family
* add JSON Schema

## Week 4

* validate sample artifacts
* tighten schema and terminology

## Week 5

* add manifest/contract family
* start regression harness

## Week 6

* build one small SDK workflow
* add one routing/control note

## Week 7

* implement one gate or guardrail
* test failure behavior

## Week 8

* stabilize base outputs
* freeze capstone contract surface

## Week 9

* trace one Rust event path
* read and anchor on existing tests

## Week 10

* make one small Rust patch
* validate with test or runtime evidence

## Week 11

* implement capstone vertical slice
* connect base artifacts to Rust path where needed

## Week 12

* regression pass
* review and stabilize
* write final end-to-end note

---

# Success Criteria

By the end, you should be able to:

* write small Python and TypeScript tools quickly
* inspect and reason about `app-server` traces without freezing
* define and validate manifest/contract families comfortably
* express feedback, feedforward, and regression mechanically
* reason about routing and lossiness across orchestration boundaries
* read and modify narrow Rust `app-server` paths safely
* ship one spec-first, observable vertical slice on the real stack

This preserves the original success intent while tightening the middle of the plan around daily workflow surfaces and explicit gates. 

---

# Anti-Patterns

* do not switch languages every day
* do not turn the curriculum into a broad SDK survey
* do not start with a large greenfield Rust project
* do not separate learning from the real workbench
* do not mistake reading for progress
* do not skip validation, observation, or regression
* do not create new artifact families before the current one is stable

---

# First Session

If starting today:

1. Build a Python tool that summarizes one `app-server` transcript.
2. Build a TypeScript tool that indexes the generated protocol schema.
3. Define the first normalized-event artifact shape in JSON Schema.
4. Write one short note describing:

   * what a thread is
   * what a turn is
   * what an item is
   * what an event is
   * how local `app-server` traffic differs from direct network traffic

If you want, I can turn this into a **clean v2 markdown document** ready to drop into `curriculum.md`.
