#!/bin/bash

for BF in $(ls *.blend)
do
    blender -b ${BF} -P pythonfile.py
done