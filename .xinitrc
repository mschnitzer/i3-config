#!/bin/bash
eval $(/usr/bin/ssh-agent)
if test -S "$SSH_AUTH_SOCK" -a -x "$SSH_ASKPASS"; then
    ssh-add < /dev/null
fi
exec /usr/bin/i3
