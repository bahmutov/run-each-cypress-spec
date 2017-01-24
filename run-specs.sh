#!/usr/bin/env bash

set -e

# hint: quickly set necessary environment variables
# before running this script with https://github.com/bahmutov/as-a

echo "Use:"
echo "  run-specs.sh - runs all found cypress/integration/*-spec files"
echo "  run-specs.sh <str> - runs only filenames with given string"
echo "  run-specs.sh reverse - runs all found spec files in reverse"

if [ "$1" == "" ]
then
  tests=$(find cypress/integration -name '*-spec.js')
elif [ "$1" == "reverse" ]
then
  echo "reversed spec file order"
  tests=$(find cypress/integration -name '*-spec.js' | sort -r)
else
  echo "grep argument $1"
  tests=$(find cypress/integration -name '*-spec.js' | grep $1)
fi

justName="[^/]*-spec\.js$"
for name in $tests
do
  # name includes path, like cypress/integration/foo-spec.js
  filename=${name##*/}
  specname=${filename%.js}
  echo "running spec file $name spec name $specname"
  time CYPRESS_videosFolder=cypress/videos/$specname \
    CYPRESS_screenshotsFolder=cypress/screenshots/$specname \
    cypress run --spec $name
  echo "finish $(date)"
done
