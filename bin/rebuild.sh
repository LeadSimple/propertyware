#!/bin/bash

set -e

# Remove the previous files to guarantee we remove old files
rm -rf docs/ lib/ spec/
rm -f ".openapi-generator/FILES"

# Fix JSON file using a ruby script
ruby bin/fix_json.rb

# Generate the files using openapi-generator: https://openapi-generator.tech/
npx @openapitools/openapi-generator-cli generate -i bin/propertyware.json -g ruby -o . -c bin/config.yml --library=faraday -t ./.openapi-generator/templates/ruby-client 

# Run rubocop in these files if it exists, else fail and ask to install it
command -v rubocop >/dev/null 2>&1 || { echo "I require rubocop to be installed, but it couldn't be find in your PATH.  Aborting." >&2; exit 1; }
rubocop -a lib/
rubocop -a spec/

# Move the READMEs around so that we can customize them
# The real readme for the project is in bin/README.md
mv README.md DOCS.md
cp bin/README.md README.md

# Also move the CUSTOMIZATIONS file to the root
cp bin/CUSTOMIZATIONS.md CUSTOMIZATIONS.md

# Remove final files that we don't need from the template
rm .travis.yml
rm .gitlab-ci.yml
rm git_push.sh

# Remove script tag comments from generated files
find lib/ spec/ -type f -exec sed -i '/<script type/d' {} \;

# Make sure everything is properly installed
bundle install