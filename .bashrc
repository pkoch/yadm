function bashrc_debug() {
  false && echo "$*"
}

bashrc_debug "start bashrc $MYBASHRCSOURCED"

if ! [ -z "$MYBASHRCSOURCED" ]; then
  bashrc_debug "bail bashrc recursion"
  return
else
  export MYBASHRCSOURCED="Y"
fi
bashrc_debug "after bashrc guard"

. ~/.profile
bashrc_debug "after profile delegation"

[ -r /etc/bashrc ] && . /etc/bashrc
bashrc_debug "after machine bashrc"

unset MYBASHRCSOURCED
case $- in
  *i*)
    bashrc_debug "Interactive, keep processing"
    ;;
  *)
    bashrc_debug "Not interative, bail bashrc"
    return ;;
esac
bashrc_debug "after interactive check"

for f in `find ~/.bashrc.d/ -mindepth 1 -not -name '.*' | sort -n`; do
  bashrc_debug "bashrc sourcing $f"
  . "$f"
done; unset f
bashrc_debug "after d folder processing"

unset -f bashrc_debug
