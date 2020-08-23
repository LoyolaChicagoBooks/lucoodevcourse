#!/bin/bash

[ -f ~/.venv/sphinx/bin/activate ] && . ~/.venv/sphinx/bin/activate

make html
make LATEXOPTS=' -interaction=batchmode ' latexpdf
make epub
