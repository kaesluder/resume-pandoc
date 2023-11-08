#!/usr/bin/sh

OUTPUT="${1%.*}.docx"

echo ${OUTPUT}

pandoc ${1} -f markdown+yaml_metadata_block \
  --lua-filter=filters/resume-macros.lua \
  --template templates/jb2resume.latex \
  -o ${OUTPUT}
