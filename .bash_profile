bash_profile_debug() {
  false && echo "$*"
}

bash_profile_debug "start bash_profile $MYBASHPROFILESOURCED"

if ! [ -z "$MYBASHPROFILESOURCED" ]; then
  bash_profile_debug "bail bash_profile recursion"
  return
else
  export MYBASHPROFILESOURCED="Y"
fi
bash_profile_debug "after bash_profile guard"

if [ -r "$HOME/.profile" ]; then
  . "$HOME/.profile"
  bash_profile_debug "after profile delegation"
fi

if [ -r "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
  bash_profile_debug "after bashrc delegation"
fi

unset MYBASHPROFILESOURCED
unset -f bash_profile_debug
