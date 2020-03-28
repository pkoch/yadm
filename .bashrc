if ! [ -z "$MYBASHRCSOURCED" ]; then  return; else MYBASHRCSOURCED="Y"; fi

[ -r /etc/bashrc ] && . /etc/bashrc

case $- in
  *i*) ;; # Interactive, keep processing
  *) return ;; # Not interative, bail
esac

for f in `find ~/.bashrc.d/ -mindepth 1 -readable -not -name '.*' | sort -n`; do
  . "$f"
done; unset f

. ~/.profile

unset MYBASHRCSOURCED
