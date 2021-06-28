ROOT_PATH=$(cd $(dirname ${BASH_SOURCE}) && pwd -P)

## PATH Settings
function append_path() {
    path="$1"
    if ! [[ "$PATH" =~ "$path" ]]; then
        PATH="$PATH:$path"
    fi
}

for item in $(ls -d $ROOT_PATH/*); do
    append_path "$item/bin"
done

export GOROOT=$HOME/.dev-tools/go
export GOPATH=$HOME/dev/go

append_path "$GOROOT/bin"
append_path "$GOPATH/bin"

export PATH="$PATH"

## Misc Settings
alias tree='tree --charset=ascii'
alias pstree='pstree -A'

# Disable Ctrl-s and Ctrl-q
stty -ixon

# Make bash in emacs mode(default in many bashes)
# set -o emacs
