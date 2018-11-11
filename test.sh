#!/bin/bash

set -e
set -o pipefail

ERRORS=()

for f in $(find . -type f -not -iwholename '*.git*' -not -iwholename '*.vim/bundle*' | sort -u); do
  if file "$f" | grep --quiet shell; then
    {
      shellcheck "$f" && echo "[OK]: successfully linted $f"
    } || {
      ERRORS+=("$f")
    }
  fi
done

if [ ${#ERRORS[@]} -eq 0 ]; then
  echo "No errors"
else
  echo "These files failed shellcheck: ${ERRORS[*]}"
  exit 1
fi
