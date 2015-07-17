alias gl='git log --graph --format=format:'\''%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'\'''\'' %C(white)%s%C(reset) %C(bold white)— %an%C(reset)'\'' --abbrev-commit'
alias hl="git log --date-order --graph --format=\"%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset%C(red bold)%d%Creset %s\""
alias kl="git log --oneline --decorate=full --graph --remotes"
alias grb='git rebase -p'
alias gmrg="git merge --no-ff"
alias gpl="git pull --rebase=preserve"
function parse_git_branch_and_add_brackets {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
PS1="\W/\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]> "
