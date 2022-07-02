#!/bin/sh
set -x
export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye
gpg-connect-agent reloadagent /bye
set +x
