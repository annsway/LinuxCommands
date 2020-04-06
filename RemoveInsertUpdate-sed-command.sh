#!/bin/bash
for file
do
        mv $file $$.subhld
        sed '/^[ ]*$/d
             /Jerry/i\
Allen   91      83      95'  $$.subhld > $file
done
rm $$.subhld