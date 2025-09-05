#!/usr/bin/env zsh
mkdir -p sig/generated
echo "============ Generating signature from inline ============"
bin/rbs-inline --base lib --output sig/generated --verbose
