# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# alias
alias c='cc -Wall -Wextra -Werror'
alias norm='norminette'
alias v='valgrind'
alias ccc='cc -Wall -Wextra -Werror *.c && ./a.out'

# functions
mkcd ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}
