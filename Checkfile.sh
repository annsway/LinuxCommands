#!/bin/bash
read -p "Enter a file name to check: " filename
if [ -f $filename ]
then 
        echo $filename "is a regular file. "

        if [ -r $filename -a -x $filename ]
        then 
                echo $filename "is both readable and executable. "

        elif [ -r $filename  -a ! \( -x $filename  \) ]
        then
                echo $filename "is readable but not executable. "

        elif [ -x $filename -a ! \( -r $filename \) ]
        then
                echo $filename "is executable but not readable. "

        elif [ ! \( -x $filename -o -r $filename \) ]
        then 
                echo $filename "is neither readable nor executable. "

        fi
else
        echo $filename "is not a regular file"
fi