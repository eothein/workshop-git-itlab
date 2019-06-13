# Merge vs Rebase
+++

<https://onlywei.github.io/explain-git-with-d3/>

Git rebase does the same as git merge. Both commands are designed to integrate changes from one branch into another - they simply do it in very different ways.

+++
### Merge

```
git checkout feature
git merge master
```

- This creates a new "merge commit" in the feature branch that connects the history of both branches.
- Merging is fun because it is a non-destructive operation. The existing branches have not been changed in any way.

+++?image=assets/img/forkedcommit.svg
### Merge

@snap[south-west]
@css[tip](Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing))
@snapend

+++?image=assets/img/merge.svg
### Merge

@snap[south-west]
@css[tip](Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing))
@snapend
+++
### Rebase

```
git checkout feature
git rebase master
```

This moves the entire branch at the point of the master, whereby all new commits are effectively included in the master. The project history is rewritten by rebasing by creating brand new commits for each commit in the original branch.

+++?image=assets/img/forkedcommit.svg
### Rebase
@snap[south-west]
@css[tip](Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing))
@snapend

+++?image=assets/img/rebase.svg
### Rebase

@snap[south-west]
@css[tip](Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing))
@snapend

+++?image=assets/img/goldenrule.svg
### Golden rule of rebase

@snap[south-east]
@css[tip](The golden rule of git rebase is to never use it in public locations.)
@snapend


@snap[south-west]
@css[tip](Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing))
@snapend

+++

### Rebase workflow

```console
[Edit files]
git add.
git commit -m "Description of changes"
git pull --rebase
[Resolving any conflicts]
git push
```

 git pull --rebase = git fetch + rebase
+++

### Resolving conflicts

```console
$ git push
To github.com:bertvv/git-demo.git
 ! [rejected] master -> master (fetch first)
error: failed to push some refs to 'git@github.com: bertvv / git-demo.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by pushing another repository
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

+++

### Step 1. Rebase

```console
$ git pull --rebase
```

+++

### Step 2. Status!

```console
$ git status
rebase in progress; onto e5bd2df
You are currently rebasing 'master' on 'e5bd2df'.
  (fix conflicts and then run "git rebase - continuous")
  (use "git rebase --skip" to skip this patch)
  (use "git rebase - abort" to check out the original branch)

Unmerged paths:
  (use "git reset HEAD <file> ..." to unstage)
  (use "git add <file> ..." to mark resolution)

both modified: README.md

no changes added to commit (use "git add" and / or "git commit -a")
```

+++

### Step 3. Edit file (s)

- Search for markers
- Some editors support this!

```
If you have questions, please
<<<<<<< HEAD
open an issue
=======
ask your question in IRC.
>>>>>>> branch-a
```

+++

### Step 4. Mark resolution

```console
$ git add.
$ git status
rebase in progress; onto e5bd2df
You are currently rebasing 'master' on 'e5bd2df'.
  (all conflicts fixed: run "git rebase - continuous")

Changes to be committed:
  (use "git reset HEAD <file> ..." to unstage)

modified: README.md
$ git rebase - continuous
```

+++

### Step 5. Push!

```console
$ git status
$ git push
$ git status
```

+++

Let's try it!
