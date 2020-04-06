{
        if ($1 ~ "cfs264fa15")
        {
                n++
        }
}
END {
        print("Number of rows = " n)
}