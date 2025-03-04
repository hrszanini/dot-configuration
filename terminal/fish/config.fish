if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -d "$HOME/.local/bin"
    set PATH $HOME/.local/bin $PATH
end

set -gx STARSHIP_CONFIG ~/.config/fish/starship.toml

starship init fish | source
