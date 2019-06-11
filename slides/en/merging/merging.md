# Resolving merge conflict

@css[tip](Merge conflicts occur when competing changes are made to the same line of a file, or when one person edits a file and another person deletes the same file.)

+++

## Competitive line changes

```
$ git status
```

1. Open text editor
2. Beginning of the merge conflict: conflict mark: ```<<<<<<<```
3. Changes to the HEAD after ```<<<<<<< HEAD```
4. ```=======```, which indicates your changes to the other branch
5. followed by `` `>>>>>>> BRANCH NAME``

+++

## Competitive line changes
```
If you have questions, please
<<<<<<< HEAD
open an issue
=======
ask your question in IRC.
>>>>>>> branch-a
```

+++

## Competitive line changes

- Decide if you only want to keep the changes to your commit
- or only want to keep the changes of the other commit
- or make a completely new change.
- Remove the conflict markers and make the desired changes to the final merge.
- `git add`
- `git commit -m" Resolved merge conflict by incorporating both suggestions. "`


[source] (https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/)