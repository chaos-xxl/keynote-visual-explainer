#!/usr/bin/env bash
set -euo pipefail

REPO="chaos-xxl/keynote-visual-explainer"
cd "$(dirname "$0")"

if ! command -v gh >/dev/null 2>&1; then
  echo 'GitHub CLI (gh) is required: https://cli.github.com/' >&2
  exit 1
fi
if ! command -v git >/dev/null 2>&1; then
  echo 'git is required.' >&2
  exit 1
fi
if ! gh auth status >/dev/null 2>&1; then
  echo 'Authenticate first: gh auth login' >&2
  exit 1
fi
if gh repo view "$REPO" >/dev/null 2>&1; then
  echo "Repository $REPO already exists. Refusing to overwrite or push to an existing repository." >&2
  exit 1
fi
if [[ -d .git ]]; then
  echo 'This directory is already a Git repository; refusing to change it.' >&2
  exit 1
fi
if [[ -z "$(git config user.name || true)" || -z "$(git config user.email || true)" ]]; then
  echo 'Configure git user.name and user.email before publishing.' >&2
  exit 1
fi

git init -b main
git add .
git commit -m 'Initial release: Keynote Visual Explainer v1.0.0'
gh repo create "$REPO" --public --source=. --remote=origin --push --description 'A presentation-ready visual explanation Skill inspired by the clarity of Apple Keynote'
echo "Published: https://github.com/$REPO"
