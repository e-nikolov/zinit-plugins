echo-quoted-line() {
    [[ -z $BUFFER ]] && zle up-history
    zle quote-line
    if [[ ! -z $COPY_COMMAND ]]; then
        LBUFFER="echo -n $LBUFFER | $COPY_COMMAND"
    else;
        LBUFFER="echo -n $LBUFFER"
    fi;
}
zle -N echo-quoted-line
# [ALT+']
bindkey "^['" echo-quoted-line
