#!/usr/bin/env sh
cd "$(dirname "$0")"

usage() {
  echo "Copies patches from one folder to another using patch-convert.sh"
  echo "Saves patches with correct filenames"
  echo "(e.g. for p0 with patch- prefix; for p1 stripping patch- prefix)"
}

copier() {
  DIRCOPY=$(echo $1 | sed 's#/$##')
  DIRPASTE=$(echo $2 | sed 's#/$##')

  if [ -d $DIRCOPY ] && [ -d $DIRPASTE ]; then
    for f in $DIRCOPY/*; do
      if echo $DIRPASTE | grep p1; then
        echo "Converting $f to a p1 patch at: $DIRPASTE"
        ./patch-convert.sh p1 $f > $DIRPASTE/$(echo $f | sed 's/patch-//')
      else
        echo "Converting $f to a p0 patch at: $DIRPASTE"
        ./patch-convert.sh p0 $f > $DIRPASTE/patch-"$(basename $f | sed 's/patch-//')"
      fi
    done
  else
    echo "$DIRCOPY and $DIRPASTE directories must exist"
  fi
}


if [ $# -lt 2 ]; then
  usage
else
  copier "$@"
fi
