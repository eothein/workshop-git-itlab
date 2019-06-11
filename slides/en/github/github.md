# Working with Github

+++

## Workflow

@snap[midpoint,south]
![simple](assets/img/workflow-remote.png)
@snapend

+++

## Github

[https://github.com/](https://github.com/)

* Best-known hosting provider for Git repositories
* Free for open source

+++

## Github account

* Create a Github account
    * link this account to your email address

+++

## Create a repository

Create a new repository on Github (eg `my_project`)

* "Initialize this repository with a README"
* Website becomes: `https://github.com/USER/PROJECT
* Repo url (https) becomes: <https://github.com/USER/PROJECT.git>
* Repo url (** ssh **) becomes: <git@github.com: USER/PROJECT.git>

+++

![Create new project for a team](assets/img/new-repo.png)

+++

## Create local copy

1. Click the green "Clone or download" button, copy url
2. Open command prompt (Git Bash)
3. `git clone https://github.com/eothein/my_project.git`

+++

## Create local copy

@code[bash zoom-07](assets/src/github/newrepo.sh)

+++

## Github workflow for one person

@code[bash zoom-07](assets/src/github/workflowoneperson.sh)


- `pull`: Github -> local changes
- `push`: Changes locally -> Github

+++

## It can also be different

To add a new remote, use the "git remote add" command on the terminal in the directory where your repository is stored.

The git remote add command takes two arguments:

1. An external name, for example origin
2. An external URL, for example https://github.com/user/repo.git

+++

### It can also be different
@code[bash zoom-07](assets/src/github/remote.sh)

+++

## Tips and tricks <sup>1</sup>


The question is how we can add changed files to staging and commit at the same time. Git offers the following super command:

```
$ git commit -a -m "All at once"
```

+++

## Tips and tricks <sup>2</sup>

There will be times when you will regret committing.

* How can you add that remaining file to the last commit?
* And how can you modify a file if you have already recorded it?

There are two ways to return. First, you can undo the commit:

```
 git reset --soft HEAD ^
```

+++

@css[tip]("reset" is the opposite of the "add" command. This time, "reset" tells Git to undo the commit. What follows "reset" is the "--soft" option. The "--soft" option means that the commit has been canceled and is being moved before HEAD. You can now add another file to the stagging and commit, or you can change and capture files.)

+++
## Tips and tricks <sup> 3 </sup>

```
$ git add file-i-forgot-to-add.html
$ git commit --amend -m "Add the remaining file"
```
we can correct a commit by using the "-amend" option on a repository. Just add the remaining file to the staging.

+++
### Exercise

1. Generate a repository - may also be the same as in the previous exercise
2. Create a repository on Github
3. Push the work that you have made to the remote
4. Play with `reset` and the other commands.
1. How do you move files?
2. How do you delete files?
3. What does `git log --stat`,` git log --pretty=oneline` do?
4. What does the "gitk" program do?

+++

5. Create a commit where you forget files. How can you change this with `git commit --amend`
6. How can you revoke changes to a tracked file (so retrieve the original file again?) Eg with `git checkout - <file> ...`
