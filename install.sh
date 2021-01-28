#/usr/bin/env bash
set -e

if [ "$EUID" -ne 0 ];then
    echo "You really should run this as root"
    exit
fi

# Directory where all the projects will be copied
installdir="/tmp/test"

# Things that need compiling
folders=(
    dwm-flexipatch
    dmenu
    slstatus
)

declare -A others=(
#   folder  path
    ['other']="~/.dwm"
)

mkdir -pv "$installdir"

# Copy other folders
for f in "${!others[@]}"; do
    cp -r "$f" "${others[$f]}"
done

# Copy & compile all projects
for f in "${folders[@]}"; do
    cp -r "./$f" "$installdir"

    # Do this in a subshell so we don't have to cd back
    (cd "$installdir/$f" && make clean)
done

