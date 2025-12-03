function profile_debug() {
    false && echo "$*"
}

profile_debug "start profile $MYPROFILESOURCED"

if ! [ -z "$MYPROFILESOURCED" ]; then
    profile_debug "bail profile recursion"
    return
else
    export MYPROFILESOURCED="Y"
fi
profile_debug "after profile guard"

[ -r /etc/profile ] && . /etc/profile
profile_debug "after machine profile"

for f in `find ~/.profile.d -mindepth 1 -not -name '.*' | sort -n`; do
    profile_debug "profile sourcing $f"
    case $- in
      *i*) . "$f" ;;
      *) . "$f" >/dev/null ;;
    esac
done; unset f
profile_debug "after d folder processing"

. "$HOME/.bashrc"
profile_debug "after bashrc delegation"

unset MYPROFILESOURCED
profile_debug "after all profile"

unset -f profile_debug
