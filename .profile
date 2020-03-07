[ -r /etc/profile ] && . /etc/profile

if ! [ -z "$MYPROFILESOURCED" ]; then  return; else MYPROFILESOURCED="Y"; fi

for f in `find ~/.profile.d -mindepth 1 -readable | sort -n`; do
    case $- in
      *i*) . "$f" ;;
      *) . "$f" >/dev/null ;;
    esac
done; unset f

. ~/.bashrc
