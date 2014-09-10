#!/bin/bash

# This is code that only matters if you use virtual env
# If you are not George and want this rule to have effect:
#   virtualenv ~/.env/sphinx (to create your virtualenv)
#   . ~/.env/sphinx/bin/activate
#   easy_install sphinx
#
# Otherwise, you need your own Python/Sphinx environment

if [ -f ~/.env/sphinx/bin/activate ]; then
	. ~/.env/sphinx/bin/activate
fi

make html
make latexpdf
