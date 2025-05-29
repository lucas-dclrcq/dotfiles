set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share

set -gx VISUAL vim
set -gx EDITOR vim
set -gx KUBE_EDITOR vim

set -gx GOPATH $HOME/go

fish_add_path --global --prepend $HOME/.scripts
fish_add_path --global --prepend $HOME/go/bin