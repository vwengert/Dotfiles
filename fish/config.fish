if status is-interactive
    # Commands to run in interactive sessions can go here
end
fzf --fish | source
alias vim=nvim
alias fzf="fzf --style full --preview 'bat --color=always {}' --bind 'focus:transform-header:file --brief {}'"
alias mux="tmux new -A -s dev -n code -c /home/volker/Repos/"
