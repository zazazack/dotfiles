#!/usr/local/bin/fish

# aws fish completion start
function __fish_complete_aws
    set -lx COMP_WORDS (commandline -o) ""
        set -lx COMP_CWORD (math (contains -i -- (commandline -t) $COMP_WORDS)-1)
            set -lx PIP_AUTO_COMPLETE 1
                string split \  -- (eval $COMP_WORDS[1])
                end
                complete -fa "(__fish_complete_aws)" -c aws
# aws fish completion end
