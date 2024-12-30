function st
    for arg in $argv
        if test -e "$arg"
            split -a 1 -b 2000M "$arg" "$arg.p"
            trash -rf "$arg"
        else
            echo "$arg does not exist"
        end
    end
end
