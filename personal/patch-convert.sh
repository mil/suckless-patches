#!/usr/bin/env sh
usage() {
  echo "Convert a patch created with git (p1) or svn (p0) to the other format"
  echo "  ./convert-patch p0 patch-file.diff > non-prefixed-patch.diff"
  echo "  ./convert-patch p1 patch-file.diff > prefixed-patch.diff"
  echo "$1"
  exit 1
}

p1() {
  echo "Converting $1 to a prefixed patch" >&2
  [ -e "$1" ] || usage "Patch file [$1] doesn't exist"
  cat $1 |
    sed -E "s#^--- ([^a][^/])#--- a/\1#g" |
    sed -E "s#^[+]{3} ([^b][^/])#+++ b/\1#g"
}

p0() {
  echo "Converting $1 to a non-prefixed patch" >&2
  [ -e "$1" ] || usage "Patch file [$1] doesn't exist"
  cat $1 |
    sed 's#^--- a/#--- #g' |
    sed 's#^+++ b/#+++ #g'
}

if [ $# -gt 1 ]; then
  "$@"
else
  usage
fi
