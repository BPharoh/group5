#!/bin/bash

# Check for HTML errors
echo "Checking HTML..."
if ! npx htmlhint --ext .html . ; then
  echo "HTML errors found."
  exit 1
fi
echo "HTML check passed."

# Check for JavaScript errors
echo "Checking JavaScript..."
if ! npx eslint . ; then
  echo "JavaScript errors found."
  exit 1
fi
echo "JavaScript check passed."

echo "Validation succeeded!"
