---
description: A sidework worktree for the same task already exists with another session's uncommitted edits. The skill should leave it alone and report the overlap, or use a new name.
tags: [behavior, lanes]
max_turns: 30
timeout_seconds: 900
allowed_tools: [Bash, Read, Edit, Write, Glob, Grep, Skill]
---

/sidework lint-recipe: in ./app, add a `lint` recipe to the justfile that runs `cargo clippy --all-targets -- -D warnings`, and commit it.
