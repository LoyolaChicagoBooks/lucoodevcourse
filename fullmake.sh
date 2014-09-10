#!/bin/bash

if [ -f ~/.env/sphinx/bin/activate ]; then
	. ~/.env/sphinx/bin/activate
fi

python get-examples.py
make html
make latexpdf
