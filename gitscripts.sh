# --------------
#      GIT
# --------------
#
# init project
  function gitinit() {
    git init && git remote add github $1 && git remote add gitlab $2 && git remote -v && cp dev/environment/Templates/LICENSE.md . && touch .gitignore && cp dev/environment/Templates/Readme.md . && echo -e 'Git has been initialized, happy coding!'
  }
# git uncommit
  function gituncommit() {
    git rm -r --cached $1
  }
# git add commit
  function gitcommit() {
    git add . && git commit -m $1
  }
# push to github and gitlab
  function gitpush() {
    git push gitlab $1 && git push github $1
  }
# gitcommit
  function gitpushall() {
    git add . && git commit -m $2 && git push gitlab $1 && git push github $1
  }