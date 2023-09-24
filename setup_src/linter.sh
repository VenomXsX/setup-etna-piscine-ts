#!/bin/bash
file=$1
./node_modules/.bin/eslint --fix $file
