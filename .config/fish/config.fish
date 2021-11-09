if status is-interactive
    # Commands to run in interactive sessions can go here
    set -l onedark_options '-b'
    if set -q VIM
        # Using from vim/neovim.
        set onedark_options "-256"
    else if string match -iq "eterm*" $TERM
        # Using from emacs.
        function fish_title; true; end
        set onedark_options "-256"
    end

    set_onedark $onedark_options
end

# Useful Abbreviations (Maintain auto-complete)
abbr -a -g nv nvim-qt
abbr -a -g dc docker-compose

# bare git directory at $HOME/dotfiles - use config instead of git
alias config='/usr/bin/git --git-dir=/home/josh/dotfiles --work-tree=/home/josh'
