#!/bin/bash

file_names=($(ls lowpoly/in/*))

i=0
for f in ${file_names[@]}; do
    python lowpoly.py $f &

    i=$((i+1))
    if ! ((i % 20)); then
        wait
        echo "$i/${#file_names[@]}"
    fi
done

wait
echo "done"
