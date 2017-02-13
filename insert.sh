#!/bin/bash

lst=()
for element in "$@"
do
    lst=(${lst[@]} $element)
done

len=${#lst[@]}


for (( i = 0; i <= $len ; i++ ))
do
   for (( j = $i; j <= $len; j++ ))
   do
      if [ ${lst[$i]} -gt ${lst[$j]}  ]; then
           temp=${lst[$i]}
           lst[$i]=${lst[$j]}
           lst[$j]=$temp
      fi
   done
done

echo ${lst[@]}
