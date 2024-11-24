# syntax=docker/dockerfile:1
FROM pandoc/latex:latest
RUN tlmgr option repository http://mirror.ctan.org/systems/texlive/tlnet
RUN tlmgr update --self && tlmgr install enumitem sectsty underscore
RUN tlmgr update --all
