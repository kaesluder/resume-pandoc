# resume-pandoc

A markdown to PDF resume template forked from [John Bokma's example](https://github.com/john-bokma/resume-pandoc). Uses [pandoc](https://pandoc.org) for translation.

- Example build commands are in build.sh and build-docx.sh.
- The lua filters in `filters` allow for macro-expansion in the body of the resume. Lua is embedded in pandoc, so no additional installation is necessary.

## Custom Metadata

```md
---
name: Your Name Here
keywords: python, html5, javascript, sh, ksh
left-column:
  - 'Full-Stack Software Engineer'
  - 'LinkedIn: [kae-sluder](https://example.com/in/foobarbaz/)'
right-column:
  - 'GitHub: [kaesluder](https://example.com/foobarbaz/)'
languages: 'Python, Typescript, Java'
job-title: 'Full-Stack Software Engineer'
---

# Summary

Hi, I am a {{job-title}} and this is my resume.
```

## Running the build script

```sh
sh ./build.sh filename.md # PDF
sh ./build-docx filename.md # Microsoft Word Doc
```
