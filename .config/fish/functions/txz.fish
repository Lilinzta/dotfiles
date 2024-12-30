function txz
    for arg in $argv
        if test -e "$arg"
            tar -cJf "$arg.tar.xz" "$arg"
            trash -rf "$arg"
        else
            echo "$arg does not exist"
        end
    end
end
