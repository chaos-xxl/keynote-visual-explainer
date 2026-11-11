# Codex task: publish Keynote Visual Explainer to GitHub

Act on the user's behalf and complete the task end-to-end; do not create files in any existing GitHub repository.

## Goal
Create a NEW PUBLIC GitHub repository `chaos-xxl/keynote-visual-explainer` and push the contents of this project directory as its root, on branch `main`.

## Safety / checks
1. Confirm `gh` and `git` are available, and that `gh auth status` shows an account with permission to create repositories for `chaos-xxl`. If authentication is missing, request only the needed authorization; never ask the user to paste a token in chat.
2. Confirm the target name is available. If it already exists, inspect its actual contents and ownership; do not force-push or overwrite. Stop and report if the existing repository could be unrelated.
3. Validate `SKILL.md` frontmatter and that referenced files in `references/` and `assets/` exist. Review files for secrets/personal data before public publishing.
4. Publish this folder's exact contents at the repository root (do not nest it under `apple-design-skill`, and do not alter `chaos-xxl/apple-design-skill` or any other existing repository).
5. Include README.md, SKILL.md, references/, assets/, CONTRIBUTING.md, CHANGELOG.md, LICENSE, and publish.sh. A `CODEX_TASK.md` handoff may be included or omitted.
6. Use MIT license already supplied, no need to generate a replacement.
7. Verify the new repository is public and the actual remote `main` branch includes `SKILL.md` and `assets/reference-minimal.jpg`.
8. Report the real repository URL and a concise summary of what was published; do not say 'published' unless successful.

## Fast path
If no repository exists yet, `bash publish.sh` is provided; inspect it before execution and use it or an equivalent safe GitHub flow. It expects `gh auth` and git author configuration.

## Desired end state
`https://github.com/chaos-xxl/keynote-visual-explainer`
