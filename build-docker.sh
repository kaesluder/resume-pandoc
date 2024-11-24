#!/usr/bin/sh

OUTPUT="${1%.*}.pdf"

echo ${OUTPUT}

PANDOC_RUNNER="podman run --rm \
  --volume $(pwd):/data:Z \
  resume-pandoc"

${PANDOC_RUNNER} ${1} -f markdown+yaml_metadata_block \
  --lua-filter=filters/resume-macros.lua \
  --template templates/kjs2resume.latex \
  -o ${OUTPUT}
