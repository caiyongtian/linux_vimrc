# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
          . /etc/bashrc
        fi
export PATH=/opt/kube/bin:$PATH # generated by kubeasz
source <(kubectl completion bash)
source <(helm completion bash)
alias helms='helm --tls --tiller-namespace kube-system'
alias kls='kubectl get po --all-namespaces -o wide'
alias k='kubectl'
alias ks='kubectl get po'

#change the pwd configuration to an arrow
export PS1='\[\e[0;33m\]\A \[\e[0;36m\][\h \W]\[\e[0;31m\]'$(parse_git_branch)'\[\e[01;37m\] \$ \[\e[m\]'
export TERM=xterm-256color

alias vi="vim"
alias py="python"

alias d:ps="docker ps"

#Nginx server
alias ng-conf="sudo vim /usr/local/etc/nginx/nginx.conf"
alias ng="sudo nginx"
alias ng-sd="sudo nginx -s stop"

#----------My shell shortcut--------------#
alias rc='vim ~/.bashrc'
alias src='source ~/.bashrc'
alias vimrc='vim ~/.vimrc'

alias bc='cd -'
alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias cl='clear'

# add alias for apache virtual host
alias apc-server='cd /etc/apache2/ && sudo vim .'
# alias apc-rs='sudo service apache2 restart'
alias apc-rs='sudo apachectl restart'
alias apc-host='sudo vim /etc/hosts'
alias apc-vhost='sudo vim /etc/apache2/extra/httpd-vhosts.conf'
alias apc-conf='sudo vim /etc/apache2/httpd.conf'


alias down='cd ~/Downloads/'
alias des='cd ~/Desktop'

#start mysql server
alias mysql-st='mysql.server start'
alias mysql-sd='mysql.server stop'

alias ssh-repo='ssh root@10.210.10.139'
alias ssh-mg='ssh root@10.210.10.35'

#alias ssh-built='ssh -i ~/.ssh/built admin@139.162.22.77'
#alias ssh-vv='ssh -i ~/.ssh/vv -p 2683 virtualv@c3s4-2e-syd.hosting-services.net.au'

# alias for git
alias git-conf='vim ~/.gitconfig'
alias git-set='git config --global user.name "caiyongtian" && git config --global user.mail "709731685@qq.com"'
alias gs="git status" #查看状态
alias gc="git checkout"  #签出
alias gcb="git checkout -branch"  #拆分分支
alias gmf="git merge --no-ff"  #合并分支
alias gcm='git commit -m'  #添加到仓库
alias ga="git add --all"  #添加到工作区
alias gra="remote add origin" #后面添加仓库地址
alias gp="git push -u origin master" #上传到远程仓库

#--------------My shell scripts---------------#

#config the git branch
parse_git_branch()
{
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

