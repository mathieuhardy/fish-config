function rust_init
    # Env
    fish_add_path $HOME/.cargo/bin

    # Abbrevations
    abbr build "cargo build"
    abbr run "cargo run"
    abbr clippy "cargo clippy --workspace --all-targets --all-features -- -D warnings"
end
