#!/bin/bash
GITHUB_REPO="nagarajcap/Javaupgrade21"  # Replace with your GitHub repo
GITHUB_TOKEN="622AHWqjGdvlE9p122ZrZ6NnB7WZpF0ttSIG"    # GitHub token with repo access
GITHUB_WORKFLOW="jmeterui.yml"      # Replace with the exact workflow filename
REF="master"                             # Branch reference to trigger the action

# Trigger GitHub Action via GitHub API
curl -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -H "Authorization: Bearer ghp_$GITHUB_TOKEN" \
  https://api.github.com/repos/$GITHUB_REPO/actions/workflows/$GITHUB_WORKFLOW/dispatches \
  -d '{"ref":"'"$REF"'"}'
