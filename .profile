#echo "start profile $MYPROFILESOURCED"
if ! [ -z "$MYPROFILESOURCED" ]; then
    #echo "bail profile recursion"
    return
else
    export MYPROFILESOURCED="Y"
fi
#echo "after profile guard"

[ -r /etc/profile ] && . /etc/profile
#echo "after machine profile"

for f in `find ~/.profile.d -mindepth 1 -readable -not -name '.*' | sort -n`; do
    case $- in
      *i*) . "$f" ;;
      *) . "$f" >/dev/null ;;
    esac
done; unset f
#echo "after d folder processing"

. ~/.bashrc
#echo "after bashrc delegation"

unset MYPROFILESOURCED
#echo "after all profile"
