cp() {
    rsync -pogbr -hhh -e /dev/null --progress "$@"
}
compdef _files cp
