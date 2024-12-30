function tzst
    for arg in $argv
        if test -e "$arg"
            tar -I zstd -cf "$arg.tar.zst" "$arg"
            trash -rf "$arg"
        else
            echo "$arg does not exist"
        end
    end
end
