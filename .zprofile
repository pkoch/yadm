zprofile_debug() {
    false && echo "$*"
}

zprofile_debug "start zprofile"

if [ -r "$HOME/.profile" ]; then
    . "$HOME/.profile"
    zprofile_debug "after profile delegation"
fi

unset -f zprofile_debug
