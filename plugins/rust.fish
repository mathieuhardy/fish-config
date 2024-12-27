function rust_init
    # Setup tools
    rust_install 1

    # Env
    fish_add_path $HOME/.cargo/bin

    # Abbrevations
    abbr build "cargo lbuild"
    abbr run "cargo lrun"
    abbr clippy "cargo clippy --workspace --all-targets --all-features -- -D warnings"
end
