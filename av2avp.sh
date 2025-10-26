#!/bin/bash

find . -type f | while read i
do
  echo "$i" | grep /_posts/ >/dev/null && continue
  grep '\[AV\]' "$i" >/dev/null && {
    cat "$i" | sed -e "s/\[AV\]/AVP_/g" > /tmp/out$$
    cp /tmp/out$$ "$i"
    rm -f /tmp/out$$
  }
done
