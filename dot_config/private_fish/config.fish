if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/qlyu095b/mambaforge/bin/conda
    eval /home/qlyu095b/mambaforge/bin/conda "shell.fish" "hook" $argv | source
end

if test -f "/home/qlyu095b/mambaforge/etc/fish/conf.d/mamba.fish"
    source "/home/qlyu095b/mambaforge/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

set -gx VISUAL vim
set -gx EDITOR $VISUAL

