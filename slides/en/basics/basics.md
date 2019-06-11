### What is git

+++
@snap[north span]
What is git - basics?
@snapend


@snap[west span-50]
* Git * is a tool that tracks your progress based on time
@snapend

@snap[east span-50]
![](assets/img/versiolego.png)
@snapend

+++

@snap[north]
### Git takes snapshots
@snapend

@snap[west span-60]
    - You can take snapshots to return your steps
    - You can also share these snapshots with others
@snapend

@snap[east span-30]
![](assets/img/snapshot.png)
@snapend

+++
### A * repository * manages the history of your project

* Each project must have its own repository

@css[tip](So no Angular and Android project on the same repo)

+++
### Create a repo

@code[bash zoom-10](assets/src/basics/create.sh)

or

- Create a repo on Github, initialize with README
- Clone with SSH:

```console
git clone git@github.com:user/repo.git
```


+++

### `git` is your desk

1. ** Working directory **: where you work and write
2. *** Staging area ***: a draft ready to review
3. *** Repository ***: final version, ready for archiving

+++


### Simple workflow (solo)
#### Create file and add it to staging

@code[bash zoom-10](assets/src/basics/add.sh)

@snap[midpoint, south]
![Simple workflow for one person](assets/img/workflow-solo.png)
@snapend


+++

### Simple workflow (solo)
#### Make Commit
```console
$ git commit -m "Adjustment Description"
```
@snap[midpoint, south]
![Simple workflow for one person](assets/img/workflow-solo.png)
@snapend


+++
### How to write a `git commit` Message
![Commit messages](assets/img/messages.png)

+++
### How to write a `git commit` Message

1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Start with a capital letter for the subject
4. Do not end the subject line with a dot
5. Use the imperative in the subject line
6. Max body characters: 72
7. Use body to explain what and why and how (if necessary)

+++

Commit messages with a body are not that easy to write with the -m option. It is better to write the message in a text editor.

[https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration](Customize Git configuration.)

+++
### Tips and tricks <sup> 1 </sup>

Use your favorite editor (eg TextMate):

```console
git config --global core.editor "mate -w"
```

Other editors: [example](https://help.github.com/articles/associating-text-editors-with-git/)

+++
### Tips and tricks <sup> 2 </sup>
Use a git commit template to ensure that everyone uses the correct structure.

```bash
git config --global commit.template ~/.gitmessage.txt
git commit
```

+++

### Tips and tricks <sup> 3 </sup>

@code[text zoom-03](assets/src/basics/commitmsg.txt)

+++


### Use "git status" after every step

- modified / added files: <span style = "color: red"> red </span>
- files in "staging": <span style = "color: green"> green <span>


* info about command for the next step
* info about command to undo step

+++

### Comparing workplaces
#### `git diff`

- Show changes between commits, commit and working tree, etc

+++
#### `git diff`

@code[bash zoom-10](assets/src/basics/gitdiff.sh)

+++




### Comparing workplaces
#### `git diff --staged`

- Compares staging with the repository directory
- No output if these are the same

+++

### Commits must be arranged logically

- *** 1 commit for each feature! ***
- What if you do a rollback that contains two features, but you only have to change one of them
- Second feature is then also rolled back.

+++
### Commits must be arranged logically
There is a problem with the "git add". command. Because we are currently working in the root folder, "git add" will. only add files that are in the root directory. But the root directory can contain many other folders with files. How can we add files from those other folders plus the files in the root directory to the collection area? Git offers the following command:

```console
$ git add -A
```

+++

## Ctrl-Z!<sup>1</sup>

A fun metaphor is to think of Git as a timeline management utility. Commits are snapshots of a point in time or points of interest along the timeline of a project's history. Additionally, multiple timelines can be managed through the use of branches. When 'undoing' in Git, you are usually moving back in time, or to another timeline where mistakes didn't happen.


+++

`git-checkout` - Switch branches or restore working tree files

+++

@css[tip](Using the git checkout command we can checkout the previous commit using the commit's name, putting the repository in a state before the last commit. Checking out a specific commit will put the repo in a "detached HEAD" state. This means you are no longer working on any branch. In a detached state, any new commits you make will be orphaned when you change branches back to an established branch.)

+++

@css[tip](Orphaned commits are up for deletion by Git's garbage collector. The garbage collector runs on a configured interval and permanently destroys orphaned commits. To prevent orphaned commits from being garbage collected, we need to ensure we are on a branch.)

+++

From the detached HEAD state, we can execute 

```bash
git checkout -b new_branch
```

This will create a new branch named new_branch and switch to that state. The repo is now on a new history timeline in which the last commit no longer exists.

+++

## Ctrl-Z!<sup>2</sup>

* `git-revert` -Revert some existing commits

@css[tip](Let's assume we have an original commit history example.  This time let's try a revert 'undo'. If we execute `git revert HEAD`, Git will create a new commit with the inverse of the last commit. This adds a new commit to the current branch history.)

+++
## Ctrl-Z!<sup>3</sup>
* `git-reset` -Reset current HEAD to the specified state

@css[tip](If we invoke `git reset --hard a1e8fb5` the commit history is reset to that specified commit. Previous commits no longer exist in the commit history. At this point, we can continue working and creating new commits as if the new commits never happened. This method of undoing changes has the cleanest effect on history.)

+++ 
## Ctrl-Z!<sup>4</sup>

- `git commit --amend`

@css[tip](Once you have made more changes in the working directory and staged them for commit by using `git add`, you can execute `git commit --amend`. This will have Git open the configured system editor and let you modify the last commit message. The new changes will be added to the amended commit.)

+++
## Ctrl-Z!<sup>5</sup>
@css[tip](The `git clean` command which is a convenience utility for undoing changes to the working directory.)

+++

## Ctrl-Z!<sup>summary</sup>


@table[table-header text-07 table-fragment ](assets/tables/ctrlzoverview.csv)

+++

## History
```
git log
```

```console
commit 318f763a52c7987eedb3e27f38e47d6c8f5f7762
Author: eothein <jens.buysse@gmail.com>
Date: Fri Feb 15 10:14:21 2019 +0100

    [feat] Add tips and tricks for commit messages

    https://gist.github.com/zakkak/7e06725ebd1336bfebebe254de3de825
    https://help.github.com/articles/associating-text-editors-with-git/
```

+++

### Pro tip: Aliases

Add to `~/.bashrc`:

@code[bash zoom-10](assets/src/basics/aliases.sh)

See: <https://github.com/bertvv/dotfiles/blob/master/.bash.d/aliases.sh>

+++
### Quiz
What do the following commands do

* ```git config --global user.name" Sam Smith "```
* ```git init```
* ```git add <filename>```
* ```git commit -m" Commit message "```
* ```git push origin master```
* ```git status```
* ```git diff```
* ```git checkout - <filename>```



+++
### Exercise: Make your own repo

- Create your repo
- Configure as needed
- Adjust the readme.md file
- Commit the changes
- Make some adjustments to the readme file, commit them
- Also make some adjustments and cancel them in the staging, working tree

+++
### Ex: Learn and practise git

<https://gitexercises.fracz.com/>
