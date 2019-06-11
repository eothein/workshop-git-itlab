# Tips, recommendations

+++

### KISS

Do not make workflow more complicated than **strictly** necessary

+++

### Write good commit messages

- for your team members
- for your future self

<https://chris.beams.io/posts/git-commit/>

+++

### Atomic commits

- Every commit has exactly one reason / purpose
- Add individual files to staging

+++

### Git diff

View local changes before you add or commit

+++

### Never overwrite public history

Do not do this:

```console
$ git reset --hard
$ git push -force
```

Use `git revert` instead

+++

### Push regularly

The longer you wait, the more merge conflicts!
- And merge regularly

+++

### Read The Fine Error / Info Message!


## Correct typical errors

<https://ohshitgit.com/>
