#!/bin/bash

py_script="$JOLTER_PATH/import_obj.py"

IFS=$'\n'
for objfile in $(find -type f -name "*.obj")
do
    echo blender -P "${py_script}" -b "$(readlink -f ${objfile})"
    blender -P "${py_script}" -b "$(readlink -f ${objfile})"
done
