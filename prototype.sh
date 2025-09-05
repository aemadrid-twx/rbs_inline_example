#!/usr/bin/env zsh
mkdir -p sig
for name in calculator
do
  echo "============ Generating signature for $name ============"
  echo "------------ $name.rb ------------"
  cat lib/$name.rb
  echo
  echo "------------ $name.rbs ------------"
  bin/rbs prototype rb lib/$name.rb > sig/lib/$name.rbs
  cat sig/lib/$name.rbs
done