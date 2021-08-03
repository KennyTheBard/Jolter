#!/bin/bash

py_script="$JOLTER_PATH/import_obj.py"

IFS=$'\n'
objfiles=$(find -type f -name "*.obj")
total=$(find -type f -name "*.obj" -printf \\n | wc -l)

index=$((1))
for objfile in $objfiles
do
    filepath=$(readlink -f ${objfile})
    blendfile="${filepath%.*}.blend"

    if [ -e $blendfile ]
    then
        echo "Progress: $index/$total skipped... $(du -h $blendfile | cut -f1)"
    else
        blender -P "$py_script" -b "$filepath" > /dev/null 2>&1
        echo "Progress: $index/$total completed... $(du -h $blendfile | cut -f1)"
    fi

    index=$((index+1))
done
