#!/bin/bash

MOVIES=("RRR" "DjTillu" "murari" "SpiderMan")

# size of above array is 3.
# index are 0,1,2

# list always starts with 0.

echo "First Movie is: ${MOVIES[0]}"
echo "First Movie is: ${MOVIES[1]}"
echo "All Movies are: ${MOVIES[@]}"

echo "All Movies are: ${MOVIES[*]}" #"*" also prints all the data stored in array

echo "Count of index present in array: ${#MOVIES[@]}"
