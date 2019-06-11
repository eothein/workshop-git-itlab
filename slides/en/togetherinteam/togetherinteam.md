# Teamwork

+++

## Trunk based development

- No branches on central repo!
- Applied with Continuous Integration / Delivery / Deployment
- Feature flags

+++

### Feature branches

- Software with discrete releases
- Master is always "clean"
- More complex!
- Possible bottlenecks

+++?image=assets/img/feature.png&size=contain

+++
### Main branches
* master: product-worthy
* develop: latest changes for the next release

+++
### Supporting branches

* feature
* branches off from develop
* contain new features of the software
* `git checkout -b myfeature develop`

```
git checkout develop
Switched to 'develop' branch
git merge --no-ff myfeature
Updating ea1b82a..05e9557
(Summary of changes)
git branch -d myfeature
Deleted branch myfeature (was 05e9557).
git push origin developer
```

+++?image=assets/img/noff.png
### --no-ff

+++

### Release and hotfix

release
* branches off from develop or master
* preparation for new production release
* `git checkout -b release-1.2 developer`


+++

```
git checkout master
Switched to branch 'master'
git merge --no-ff release-1.2
Merge made by recursive.
(Summary of changes)
git tag -a 1.2
git checkout develop
Switched to 'develop' branch
git merge --no-ff release-1.2
Merge made by recursive.
(Summary of changes)
git branch -d release-1.2
```

+++

### Pull requests

- For employees who do not have write access
- More complex to set up
- Always commit on topic branch
- Synchronize with "upstream"
