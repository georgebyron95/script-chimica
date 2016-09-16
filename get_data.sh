#!/bin/bash

#
#  Getting the OR values from the frame of the MD
#

numdirs=8
identifier='cartella'
extension='log'

for i in $(seq $numdirs)
do
    for j in $(ls $i$identifier/*$extension)
    do
         python OR_value.py $j
    done
done

