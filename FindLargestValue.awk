// Find the largest value 

echo $1 $2 $3 $4 | awk '

function max(a, b){
        return a > b ? a : b
}

{
        print max(max(max($1, $2), $3), $4)
}
'