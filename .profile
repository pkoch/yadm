profile_debug() {
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

for f in `find ~/.profile.d -mindepth 1 -not -name '.*' | sort -n`; do
    profile_debug "profile sourcing $f"
    case $- in
      *i*) . "$f" ;;
      *) . "$f" >/dev/null ;;
    esac
done; unset f
profile_debug "after d folder processing"

unset MYPROFILESOURCED
profile_debug "after all profile"

unset -f profile_debug
