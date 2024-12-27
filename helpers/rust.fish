function rust_install --argument-names quiet
    if not type -q rustup
        curl https://sh.rustup.rs -sSf | sh
    end

    if test -z "$quiet" || test "$quiet" = "0"
        echo "✓ rustup"
        echo "✓ cargo"
        echo ""
    end

    for tool in (cat ~/.config/fish/cargo.packages)
        set parts (string split ';' $tool)
        set bin $tool
        set pkg $tool

        if test (count $parts) -gt 1
            set bin $parts[1]
            set pkg $parts[2]
        end

        if not type -q $bin
            cargo install --locked $pkg
        end

        if test -z "$quiet" || test "$quiet" = "0"
            echo "✓ $pkg"
        end
    end
end
