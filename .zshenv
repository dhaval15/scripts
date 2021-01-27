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

complete -W "$(cat "$HOME/scripts/cmd/f_commands.txt" | awk -F 's*:s*' '{print $1}' | tr '\n' ' ')" f
complete -W "$(cat "$HOME/scripts/cmd/v_commands.txt" | awk -F 's*:s*' '{print $1}' | tr '\n' ' ')" v
complete -W "$(cat "$HOME/scripts/cmd/c_commands.txt" | awk -F 's*:s*' '{print $1}' | tr '\n' ' ')" c
complete -W "$(ls "$HOME/.config/alacritty/colors")" atheme
