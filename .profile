if ! [ -z "$MYPROFILESOURCED" ]; then  return; else MYPROFILESOURCED="Y"; fi

[ -r /etc/profile ] && . /etc/profile

for f in `find ~/.profile.d -mindepth 1 -readable -not -name '.*' | sort -n`; do
    case $- in
      *i*) . "$f" ;;
      *) . "$f" >/dev/null ;;
    esac
done; unset f

. ~/.bashrc

unset MYPROFILESOURCED
