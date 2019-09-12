#!usr/bin/fish

function fish_prompt --description 'Write out the prompt'
	if test -z $WINDOW
        printf '%s%s@%s%s%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    else
        printf '%s%s@%s%s%s(%s)%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
end

#aliases
alias lsa="ls -al"
alias cff="nano ~/.config/fish/config.fish"
alias cfnf="nano ~/.config/neofetch/config.conf"
alias cf="cd ~/.config"
alias nf="neofetch --ascii ~/.config/neofetch/logo.txt"

#functions
function fish_user_key_bindings
	bind \ca beginning-of-buffer
end
