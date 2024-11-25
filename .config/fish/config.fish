set -g -x PATH /usr/local/bin /bin /usr/sbin /usr/bin/vendor_perl/ /opt/homebrew/bin/ $PATH
set -x GOPATH $HOME/.go
set -x TERM "tmux-256color"

set -x EDITOR "nvim"
set -x VISUAL "nvim"

set -g -x GNUARMEMB_TOOLCHAIN_PATH /usr/
set -g -x ZEPHYR_TOOLCHAIN_VARIANT gnuarmemb
set -g -x GNUARMEMB_TOOLCHAIN_PATH /usr/bin/

alias gvim "gvim -p --remote-tab-silent"
alias ls "ls -G --color"
alias ll "ls -Gthor"
alias excuse "echo `telnet bofh.jeffballard.us 666 2>/dev/null` |grep --color -o"
alias svim "sudo vim"
alias grep "grep --color=always"
alias top "htop"
alias code "code --user-data-dir=~/.vscode"
alias platform "code --user-data-dir=~/.vscode_platformio/"
alias tmuxd "systemd-run --scope --user tmux"

ulimit -c unlimited

function su
    /bin/su --shell=/usr/bin/fish $argv
end
set fish_greeting

set -g fish_user_paths "/opt/homebrew/sbin" $fish_user_paths
set -g fish_user_paths "/Users/krzysztofgarczynski/.cargo/bin" $fish_user_paths
fish_add_path /opt/homebrew/opt/llvm/bin
pyenv init - | source

starship init fish | source

source $HOME/.config/fish/secrets.fish
