if status is-interactive
    # Commands to run in interactive sessions can go here
end

export STARSHIP_CONFIG=~/.config/fish/starship.toml
starship init fish | source

function fish_greeting
    set sentences \
    "Yeah man!" \
    "Acho que você não tá querendo mexer no terminal não..." \
    "Que tela bonita!" \
    "Aaah! Que delícia de terminal, cara!" \
    "Gosta de curl não, porra?" \
    "To fingindo que to trabaiano..." \
    "O \"F\" em programador significa felicidade :D" \
    "Se você está lendo isso, você consegue ler."
    echo $(random choice $sentences)
end

if test -d "$HOME/.local/bin"
    set PATH $HOME/.local/bin $PATH
end

export JAVA_HOME="/usr/lib/jvm/java"
export EDITOR="/usr/bin/nvim"

alias gitwork='git config --global user.email hamilton.silva@fotosensores.com'
alias gitpersonal='git config --global user.email hrszanini@gmail.com'
alias miniserver='ssh -t root@192.168.15.13 "tmux new -A -s remote"'
alias local='tmux new -A -s local'
