if status is-interactive
    # Commands to run in interactive sessions can go here
end
export PATH="$PATH:/opt/nvim-linux64/bin:/home/volker/.local/bin"
alias vim=nvim
alias agdb='cgdb -d /opt/winterhalter-distro/4.3/sysroots/x86_64-wihasdk-linux/usr/bin/arm-wiha-linux-gnueabi/arm-wiha-linux-gnueabi-gdb'
alias hc='cd ~/develop/winterhalter-hmi/'
alias hv='cd ~/develop/winterhalter-hmi/ && vim'
