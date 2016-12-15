
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
# fish: Place this in ~/.config/fish/config.fish after the line
# "source ~/.iterm2_shell_integration.fish".
function iterm2_print_user_vars
    iterm2_set_user_var user (whoami)
    iterm2_set_user_var host (hostname -s)
    #if test -d .git
    #    iterm2_set_user_var gitBranch (git branch ^/dev/null | grep \* | sed 's/* //')""
    #end
end

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/bin" $fish_user_paths
