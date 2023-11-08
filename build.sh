#!/usr/bin/sh

OUTPUT="${1%.*}.pdf"

echo ${OUTPUT}

pandoc ${1} -f markdown+yaml_metadata_block \
  --lua-filter=filters/resume-macros.lua \
  --template templates/kjs2resume.latex \
  -o ${OUTPUT}
