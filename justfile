set shell := ["bash", "-eu", "-o", "pipefail", "-c"]

default:
    just --list

sync:
    uv sync

run:
    uv run python main.py

fmt:
    uv run ruff format .

lint:
    uv run ruff check .

test:
    uv run pytest

ts-fmt:
    npm run format

ts-fmt-check:
    npm run format:check

ts-typecheck:
    npm run typecheck

ts-test:
    npm test
