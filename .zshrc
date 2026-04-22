zshrc_debug() {
    false && echo "$*"
}

case $- in
    *i*)
        zshrc_debug "interactive, keep processing"
        ;;
    *)
        zshrc_debug "not interactive, bail zshrc"
        unset -f zshrc_debug
        return
        ;;
esac

if [ -r "$HOME/.bazshrc" ]; then
    . "$HOME/.bazshrc"
    zshrc_debug "after bazshrc delegation"
fi

if [ -d "$HOME/.zshrc.d" ]; then
    for f in `find ~/.zshrc.d/ -mindepth 1 -not -name '.*' | sort -n`; do
        zshrc_debug "zshrc sourcing $f"
        . "$f"
    done
    unset f
fi

unset -f zshrc_debug
