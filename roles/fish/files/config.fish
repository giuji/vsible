if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting


function fish_prompt
  echo -n (set_color green) (prompt_pwd)(set_color normal) '> '
end

alias daos='doas'
alias daso='doas'

fish_add_path -a ~/.local/bin/ ~/.local/appimage
