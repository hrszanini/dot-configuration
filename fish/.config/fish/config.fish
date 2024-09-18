if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

function fish_greeting
    set sentences \
    "Yeah man!" \
    "Acho que você não tá querendo mexer no terminal não..." \
    "Que tela bonita!" \
    "Aaah! Que delícia de terminal, cara!" \
    "Gosta de curl não, porra?"
    echo $(random choice $sentences)
end

if test -d "$HOME/.local/bin"
    set PATH $HOME/.local/bin $PATH
end

thefuck --alias | source

export JAVA_HOME="/usr/lib/jvm/java"
export EDITOR="/usr/bin/nvim"

alias gitwork='git config --global user.email hamilton.silva@fotosensores.com'
alias gitpersonal='git config --global user.email hrszanini@gmail.com'
