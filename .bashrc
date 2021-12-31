#echo "start bashrc $MYBASHRCSOURCED"
if ! [ -z "$MYBASHRCSOURCED" ]; then
  #echo "bail bashrc recursion"
  return
else
  export MYBASHRCSOURCED="Y"
fi
#echo "after bashrc guard"

. ~/.profile
#echo "after profile delegation"

[ -r /etc/bashrc ] && . /etc/bashrc
#echo "after machine bashrc"

unset MYBASHRCSOURCED
case $- in
  *i*) ;; # Interactive, keep processing
  *)
    #echo "Not interative, bail bashrc"
    return ;;
esac
#echo "after interactive check"

for f in `find ~/.bashrc.d/ -mindepth 1 -not -name '.*' | sort -n`; do
  . "$f"
done; unset f
#echo "after d folder processing"
