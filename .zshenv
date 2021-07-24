SCRIPTS_PATH="$HOME/scripts/"

PATH="$PATH:$SCRIPTS_PATH/dwm"
PATH="$PATH:$SCRIPTS_PATH/rofi"
PATH="$PATH:$SCRIPTS_PATH/dmenu"
PATH="$PATH:$SCRIPTS_PATH/vim"
PATH="$PATH:$SCRIPTS_PATH/tmux"
PATH="$PATH:$SCRIPTS_PATH/flutter"
PATH="$PATH:$SCRIPTS_PATH/misc"
PATH="$PATH:$SCRIPTS_PATH/dragon"
PATH="$PATH:$SCRIPTS_PATH/cmd"
PATH="$PATH:$SCRIPTS_PATH/feather"
PATH="$PATH:$SCRIPTS_PATH/emacs"
PATH="$PATH:$SCRIPTS_PATH/writer"
PATH="$PATH:$SCRIPTS_PATH/kitty"
PATH="$PATH:$SCRIPTS_PATH/habbit"
PATH="$PATH:$SCRIPTS_PATH/fzf"

compdefas () {
  if (($+_comps[$1])); then
    compdef $_comps[$1] ${^@[2,-1]}=$1
  fi
}

compdefas which vimc
compdefas which catc

complete -W "$(cat "$HOME/scripts/cmd/f_commands.txt" | awk -F 's*:s*' '{print $1}' | tr '\n' ' ')" f
complete -W "$(ls "$HOME/.config/alacritty/colors")" atheme
