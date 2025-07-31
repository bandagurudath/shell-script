#!/bin/bash

Movies=(ABC,XYZ,123)

#echo "Movie1: ${Movies[0]}
#echo "Movie1: ${Movies[1]}
#echo "Movie1: ${Movies[2]}

for i in $Movies
do
echo "$Movies[i] /n"
done