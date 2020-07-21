function setup_fzf
    if command -sq fdfind
        # On some distros fd is called fdfind, create an alias if that is the case
        function fd
            fdfind $argv
        end
    end

    set -l fzf_fd_cmd 'fd --type file --follow'
    if type -q fd
        # fd exists, use it as default command
        set -U FZF_DEFAULT_COMMAND $fzf_fd_cmd
        set -U FZF_CTRL_T_COMMAND 'fd --type file --follow . $dir'
    else if test "$FZF_DEFAULT_COMMAND" = "$fzf_fd_cmd"
        set -e FZF_DEFAULT_COMMAND
        set -e FZF_CTRL_T_COMMAND
    end
    set -U FZF_DEFAULT_OPS '--height 40%'

end
