#!/usr/bin/sh

OUTPUT="${1%.*}.docx"

echo ${OUTPUT}

pandoc ${1} -f markdown+yaml_metadata_block \
  --template templates/jb2resume.latex \
  -o ${OUTPUT}
