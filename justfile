# List the recipes.
default:
    @just --list

# Validate the marketplace, plugin, and skill manifests.
validate:
    claude plugin validate --strict .
    claude plugin validate --strict .claude-plugin/plugin.json
    claude plugin validate --strict skills

# Lint the shell scripts.
lint:
    shellcheck -x scripts/*.sh evals/_fixtures/lib.sh evals/*/scaffold.sh

# Run the eval suite. It runs each case's scaffold as you and gives the agent a shell.
eval *args:
    claude plugin eval . --scaffold --allow-tools Bash Edit Write {{args}}

# Run the trigger cases only, which get no shell.
eval-triggers *args:
    claude plugin eval . --scaffold --tag trigger {{args}}

# Reproduce the nested-worktree failures the README lists.
lab:
    bash scripts/nesting-lab.sh
