. /etc/bashrc

if ! [ -z "$MYBASHRCSOURCED" ]; then  return; else MYBASHRCSOURCED="Y"; fi

case $- in
  *i*) ;; # Interactive, keep processing
  *) return ;; # Not interative, bail
esac

for f in `find ~/.bashrc.d/ -mindepth 1 -readable | sort -n`; do
  . "$f"
done; unset f

. ~/.profile
