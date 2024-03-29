alias ls="ls --color"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -Al"

alias ..="cd .."
alias ...="cd .. && cd .."
alias cddj="cd /home/foricee/workspace/pl/python/django/"
alias cdir="cd /media/Easy/EBook/IR"

alias rm="mv -t /home/foricee/.local/share/Trash/files"

export EDITOR="vim"
alias vi='vim'
alias gi='gvim --remote-tab-silent'
alias vib='vim ~/.bashrc'
function gihpc() {
    gi scp://hdgao@202.118.250.16:55555/"$1"
}
function gi8w() {
    gi scp://hdgao@192.168.3.168/"$1"
}
function gixyss() {
    gi scp://hdgao@219.217.228.80/"$1"
}

# ssh
alias sshhpc="ssh -p 55555 hdgao@202.118.250.16"
alias ssh8w="ssh hdgao@192.168.3.168"
alias sshxyss="ssh hdgao@219.217.228.80"

alias snet='watch -n 1 "/sbin/ifconfig eth0 | grep bytes"'

export PATH=$PATH:/opt/maven/bin/mvn
#scp -rP 55555 ~/somefile hdgao@202.118.250.16:/users/hdgao
#scp -rP 55555 hdgao@202.118.250.16:/users/hdgao/research/ downloads/
