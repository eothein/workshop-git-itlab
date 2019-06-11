# Branches

+++

@snap[west span-60]
* "Master" is the standard branch, it is a naming convention.
* You can view a branch as a bookmark for commits.
As we add commits, the active branch points to the new commit
@snapend

@snap[east span-40]
![](assets/img/branches.png)
@snapend

+++

### Branches in the terminal

- Branches are pointers to commits
- `git show master` shows the commit to which the master refers
- `git branch` shows the branches in your project with ` * ` the current branch


```console
git show master
commit babd2aee551c58732662ccbd9382b177024c44f1 (HEAD -> master, origin / master, origin / HEAD)
Author: eothein <jens.buysse@gmail.com>
Date: Sun Jan 6 15:48:51 2019 +0100
```
+++
### Create a new branch

- `git branch newBranch` create a branch" newBranch "
- Branches refer back to the current active commit
- `git checkout branchName` puts your working directory on that branch

<http://git-school.github.io/visualizing-git/>

+++
### Pull means = fetch + merge

- Pull first gets the commits and hits
them up locally.
- Merges them together and places them together in the staging and
creates a new commit with two parents.
- Merging updates the active branch to point
of the new merge commit
- You see the new commits reflected in you
local project when you execute "git log".

+++

### Exercise

1. Create a repository on your desktop called 'planets' with a
readme.md and commit it.
2. Choose a Wikipedia page about a planet of your choice.
3. Copy the first paragraph over the planet, paste it in your
readme.md and commit it.
4. Create a new branch (`git branch <branchname>`) and switch to it (`git
<branchname> checkout).

+++

5. Add a Wikipedia entry about another planet
in the readme.
6. Save, then commit, then exit.
7. Does the file show your first planet? Or the second?
8. What happens if you go back to the master branch?