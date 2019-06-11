---?image=assets/img/nature.jpg
@title[Workshop git and Github]

@snap[north headline span-80]
@css[heading](Workshop git and Github)
@snapend

@snap[south byline]
e-quality - jens.buysse@gmail.com
@snapend

---
@title[Contents]

### There is more than one way to do it
@css[help](What follows are my personal recommendations together with those of Bert Van Vreckem)

---?include=slides/en/intro/PITCHME.md

---?include=slides/en/clivsgui/PITCHME.md

---?include=slides/en/gettingstarted/PITCHME.md

---?include=slides/en/basics/basics.md

---
## How does git work?

- Visual Git cheat sheet: <http://ndpsoftware.com/git-cheatsheet.html#loc=stash;>
- Visualizing Git Concepts with D3: <https://onlywei.github.io/explain-git-with-d3/>

+++

---?include=slides/en/github/github.md

---?include=slides/en/team/team.md

---?include=slides/en/merging/merging.md

---?include=slides/en/branch/branch.md

---?include=slides/en/rebase/mergevsrebase.md




# Samenwerken in team

+++

## Trunk based development

- Geen branches op centrale repo!
- Toegepast bij Continuous Integration/Delivery/Deployment
- Feature flags

+++

### Feature branches

- Software met discrete releases
- Master is altijd "proper"
- Complexer!
- Mogelijke bottlenecks

+++
![Feature branch](assets/feature.png)

+++
### Main branches
* master : poductiewaardig
* develop : laatste aanpassingen voor de volgende release

+++
### Ondersteunende branches

* feature
	* takt af van develop
	* bevatten nieuwe features van de software
	* `git checkout -b myfeature develop`

```
$ git checkout develop
Switched to branch 'develop'
$ git merge --no-ff myfeature
Updating ea1b82a..05e9557
(Summary of changes)
$ git branch -d myfeature
Deleted branch myfeature (was 05e9557).
$ git push origin develop
```

+++
### --no-ff

![No-ff](assets/noff.png)
+++

### Release en hotfix

 release
	* takt af van develop of master
	* voorbereiding voor nieuwe productierelease
	* `git checkout -b release-1.2 develop

	
+++

```
$ git checkout master
Switched to branch 'master'
$ git merge --no-ff release-1.2
Merge made by recursive.
(Summary of changes)
$ git tag -a 1.2
$ git checkout develop
Switched to branch 'develop'
$ git merge --no-ff release-1.2
Merge made by recursive.
(Summary of changes)
$ git branch -d release-1.2
```

+++

### Pull requests

- Voor medewerkers die geen schrijftoegang hebben
- Complexer op te zetten
- Altijd committen op topic branch
- Synchroniseren met "upstream"

---

# Tips, aanbevelingen

+++

### KISS

Maak workflow niet ingewikkelder dan **strikt** noodzakelijk

+++

### Schrijf goede commit-boodschappen

- voor je teamleden
- voor je toekomstige zelf

<https://chris.beams.io/posts/git-commit/>

+++

### Atomaire commits

- Elke commit heeft precies één reden/doel
- Voeg individuele bestanden toe aan staging

+++

### Git diff

Bekijk lokale wijzigingen voordat je add/commit

+++

### Nooit publieke historiek overschrijven

Doe dit niet:

```console
$ git reset --hard
$ git push --force
```

Gebruik in plaats daarvan `git revert`

+++

### Regelmatig pushen

Hoe langer je wacht, hoe meer merge-conflicten!

+++

### Read The Fine Error/Info Message!

---

## Typische fouten rechtzetten

<https://ohshitgit.com/>

---

## Q&A

Ask me anything!

(about Git...)

---

## Bedankt!

Meer info:

* [`giteveryday`](http://git-scm.com/docs/giteveryday) (basiscommando's)
* [Visual Git Cheat Sheet](http://ndpsoftware.com/git-cheatsheet.html)
* [Visualizing Git Concepts with D3](https://onlywei.github.io/explain-git-with-d3/)
* [Git Reference](http://git-scm.com/docs) ("man pages")
* <https://github.com/bertvv>
