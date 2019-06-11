alias s = 'git status'
alias a = 'git add'
alias c = "git commit -m"
alias d = "git diff"
alias g = "git"
aka h = 'git log --pretty = "format:% C (yellow)% h% C (blue)% ad% C (reset)% s% C (red)% d% C (green)% an% C (reset),% C (cyan)% ar "--date = short --graph --all '
alias p = "git push && git push - tags"
aka gp = 'git pull --rebase'
alias pr = 'git pull --rebase'
aka pt = 'git push -u origin --tags'
# Git author stats
alias gs = 'git ls-tree -r -z --name-only HEAD | xargs -0 -n1 git blame --line-porcelain | grep "^ author" | sort | uniq -c | sort -nr '
