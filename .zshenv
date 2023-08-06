SCRIPTS_PATH="$HOME/Hive/scripts/"

PATH="$PATH:$SCRIPTS_PATH/wm"
PATH="$PATH:$SCRIPTS_PATH/dev"
PATH="$PATH:$SCRIPTS_PATH/term"
PATH="$PATH:$SCRIPTS_PATH/editor"
PATH="$PATH:$SCRIPTS_PATH/writer"
PATH="$PATH:$SCRIPTS_PATH/fzf"
PATH="$PATH:$SCRIPTS_PATH/webapps"
PATH="$PATH:$SCRIPTS_PATH/apps"

compdefas () {
  if (($+_comps[$1])); then
    compdef $_comps[$1] ${^@[2,-1]}=$1
  fi
}

compdefas which vimc
compdefas which catc

#complete -W "$(cat "$HOME/scripts/cmd/f_commands.txt" | awk -F 's*:s*' '{print $1}' | tr '\n' ' ')" f
