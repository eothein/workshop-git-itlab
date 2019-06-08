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


## Hoe werkt Git?

- Visual Git cheat sheet: <http://ndpsoftware.com/git-cheatsheet.html#loc=stash;>
- Visualizing Git Concepts with D3: <https://onlywei.github.io/explain-git-with-d3/>

---

# Werken met Github

+++

## Workflow

@snap[midpoint, south]
![Eenvoudige workflow voor één persoon](assets/workflow-remote.png)
@snapend


+++

## Github

[https://github.com/](https://github.com/)

* Bekendste hosting-provider voor Git repositories
* Gratis voor open source

+++

## Github account

* Maak een Github-account aan
    * koppel aan emailadres 

+++

## Repository aanmaken

Maak op Github een nieuwe repository aan (bv. `my_project`)

* "Initialize this repository with a README"
* Website wordt: `https://github.com/USER/PROJECT`
* Repo url (https) wordt: `https://github.com/USER/PROJECT.git`
* Repo url (**ssh**) wordt: `git@github.com:USER/PROJECT.git`

+++

![Nieuw project aanmaken voor een team](assets/new-repo.png)

+++

## Lokale kopie maken

1. Klik groene knop "Clone or download", kopieer url
2. Open commando-prompt (Git Bash)
3. `git clone https://github.com/bertvv/my_project.git`

+++

## Lokale kopie maken

```console
$ git clone https://github.com/bertvv/my_project.git
Cloning into 'my_project'...
remote: Counting objects: 9, done.
remote: Compressing objects: 100% (6/6), done.
Receiving objects: 100% (9/9), done.
remote: Total 9 (delta 0), reused 9 (delta 0)
Checking connectivity... done.
```

+++

## Github workflow voor één persoon

```bash
$ git pull
[bewerk bestanden]
$ git status
$ git add file1 file2
$ git commit -m "Beschrijving van de wijzigingen"
$ git push
```

- `pull`: Wijzigingen Github -> lokaal
- `push`: Wijzigingen lokaal -> Github

+++

## Het kan ook anders

Om een ​​nieuwe remote toe te voegen, gebruikt u de opdracht `git remote add` op de terminal in de directory waarin uw repository is opgeslagen.

Het commando git remote add neemt twee argumenten:

1. Een externe naam, bijvoorbeeld oorsprong
2. Een externe URL, bijvoorbeeld https://github.com/user/repo.git

+++

## Het kan ook anders
```console
# Set a new remote
$ git remote add origin https://github.com/user/repo.git
# Verify new remote
$ git remote -v
origin  https://github.com/user/repo.git (fetch)
origin  https://github.com/user/repo.git (push)
```

## Tips and tricks <sup>1</sup>


De vraag is hoe we gewijzigde bestanden aan staging kunnen toevoegen en tegelijkertijd kunnen commiten. Git biedt de volgende super opdracht:

```
$ git commit -a -m "Alles in één keer"
```
+++

## Tips and tricks <sup>2</sup>

Er zullen momenten zijn waarop je spijt zult hebben van het committen. 

* Hoe kun je dat resterende bestand toevoegen aan de laatste commit? 
* * En hoe kun je een bestand aanpassen als je het al hebt vastgelegd? 

Er zijn twee manieren om terug te keren. Ten eerste kun je de commit ongedaan maken:

```
 git reset --soft HEAD^
```
+++

"reset" is het tegenovergestelde van de opdracht "add". Deze keer vertelt "reset" Git om de commit ongedaan te maken. Wat volgt op "reset" is de optie "--soft". De "--soft" optie betekent dat de commit is geannuleerd en wordt verplaatst vóór HEAD. U kunt nu een ander bestand toevoegen aan de stagging en committen, of u kunt bestanden wijzigen en vastleggen.
+++
## Tips and tricks <sup>3</sup>

```
$ git add file-i-forgot-to-add.html
$ git commit --amend -m "Add the remaining file"
```
we kunnen een commit corrigeren door de "-amend" -optie te gebruiken bij een repository. Voeg gewoon het overgebleven bestand toe aan de staging.

+++
### Oefening

1. Genereer een repository - mag ook dezelfde zijn als in voorgaande oefening
2. Maak een repository op Github
3. Push het werk dat je gemaakt hebt naar de remote
4. Speel eens met `reset` en de andere commando's.
	1. Hoe verplaats je bestanden?
	2. Hoe verwijder je bestanden?
	3. Wat doet `git log --stat`, `git log --pretty=oneline`
	4. Wat doet het programma `gitk`

+++ 

5. Maak een commit waar je bestanden vergeet. Hoe kan je dit aanpassen met `git commit --amend`
6. Hoe kan je veranderingen in een getrackt bestand revoken (dus terug het originele bestand ophalen?) bv. met `git checkout -- <file>...`

---

# Werken in team

+++

## Anderen toegang geven tot je repository

* Klik rechts op **Settings**
* In het menu links, klik op **Collaborators**
* Voeg de gebruikersnamen toe van wie toegang moet krijgen

+++

## Een project opzetten in GitHub

* Eén persoon doet:
    * Aanmaken nieuwe repository
    * Optie voor creëren README + `.gitignore` aanvinken
    * Teamleden toevoegen
* Iedereen doet
    * `git clone https://github.com/USER/PROJECT.git`

+++

## Workflow: werken in een team

* Haal laatste revisie binnen: `git pull origin master`
* Maak wijzigingen: `git add`, `git commit`
* Nogmaals: `git pull --rebase`
* Naar centrale repository: `git push origin master`

- `-u` is kort voor `--set-upstream`


+++
## Oefening

- Voeg mensen toe aan je repository
- Voeg naar hartelust bestanden toe aan elkaar's repo
- Wat loopt er fout en hoe lossen we het op?

---

# Oplossen van merge conflict


Merge conflicten treden op wanneer concurrerende wijzigingen worden aangebracht in dezelfde regel van een bestand, of wanneer één persoon een bestand bewerkt en een andere persoon hetzelfde bestand verwijdert.


+++

## Concurerende line changes

```
$ git status
```

1. Open text editor
2. Begin van de mergeconflict: conflictmarkering ```<<<<<<<```
3. Wijzigingen van de HEAD na ```<<<<<<< HEAD```
4. ```=======```, wat je wijzigingen in de andere branch aangeeft
5.  gevolgd door ```>>>>>>> BRANCH-NAME```

+++
## Concurerende line changes
```
If you have questions, please
<<<<<<< HEAD
open an issue
=======
ask your question in IRC.
>>>>>>> branch-a
```

+++

## Concurerende line changes

3. Bepaal of u alleen de wijzigingen van uw commit wilt behouden
4. of  alleen de wijzigingen van de andere commit wilt behouden 
5. of een geheel nieuwe wijziging wilt aanbrengen. 
6. Verwijder de conflictmarkers en breng de gewenste wijzigingen aan in de uiteindelijke samenvoeging. 
4. `git add .`
5. `git commit -m "Resolved merge conflict by incorporating both suggestions."`


[source](https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/)

+++

---

# Branches
+++

@snap[west span-60]
- "Master" is de standaard branch, het is een naamgevingconventie.
- Je kan een branch bekijken als een bladwijzer voor commits.
Naarmate we commits toevoegen, wijst de actieve branch naar de nieuwe commit
@snapend

@snap[east span-40]
![](assets/branches.png)
@snapend

+++
###Branches in de terminal

- Branches zijn pointers naar commits
- `git show master` toont de commit waar de master naartoe refereert
- `git branch` toont de branches in je project met `*` de huidige branch


```console
git show master
commit babd2aee551c58732662ccbd9382b177024c44f1 (HEAD -> master, origin/master, origin/HEAD)
Author: eothein <jens.buysse@gmail.com>
Date:   Sun Jan 6 15:48:51 2019 +0100
```
+++
### Een nieuwe branch maken

- `git branch newBranch` maak een branch aan "nieuweBranch"
- Branches refereren terug naar de huidige actieve commit
- `git checkout branchName` zet je working directory op die branch

<http://git-school.github.io/visualizing-git/>

+++
### Pull verstaan = fetch + merge

- Pull haalt eerst de commits en slaat 
ze lokaal op.
- Voegt ze samen en plaatst ze samen in de staging en
maakt een nieuwe commit met twee ouders.
- Merging werkt de actieve vertakking bij tot punt
van de nieuwe samenvoeg commit
- Je ziet de nieuwe commits weerspiegeld in je
lokaal project wanneer je `git log` uitvoert.

+++
### Oefening

1. Maak een repository op je bureaublad genaamd 'planeten' met een
readme.md en commit het.
2. Kies een Wikipedia-pagina over een planeet naar keuze.
3. Kopieer de eerste alinea over de planeet, plak deze in uw
readme.md en commit het.
4. Maak een nieuwe branch (`git branch <branchname>`) en schakel ernaar (`git
checkout <branchname>`).
5. Voeg een ​​Wikipedia-vermelding toe over een andere planeet
in de readme.
6. Sla op, dan commit, sluit dan af.
7. Toont het bestand je eerste planeet? Of de tweede?
8. Wat gebeurt er als je naar de master branch terug gaat?


---

## Merge vs Rebase

<https://onlywei.github.io/explain-git-with-d3/>

Git rebase doet hetzelfde als  git merge. Beide opdrachten zijn ontworpen om wijzigingen van de ene branche in een andere branche te integreren - ze doen het gewoon op heel verschillende manieren.

+++
### Merge

```
git checkout feature
git merge master

```

- Dit creëert een nieuwe "merge commit" in de feature branch die de geschiedenis van beide branches met elkaar verbindt.
- Mergen is leuk omdat het een niet-destructieve operatie is. De bestaande takken zijn op geen enkele manier veranderd.

+++
###Merge
![Forked Repo](assets/forkedcommit.svg)

Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)

+++

###Merge
![Merged Repo](assets/merge.svg)

Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)

+++
###  Reb	ase
```
git checkout feature
git rebase master
```
Dit verplaatst de volledige branch op de punt van de master, waarbij alle nieuwe commits effectief in de master worden opgenomen. De projectgeschiedenis wordt door rebasen opnieuw geschreven door voor elke commit in de oorspronkelijke tak gloednieuwe commits te maken.
+++
### Rebase
![Forked Repo](assets/forkedcommit.svg)

Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)

+++
### Rebase
![Forked Repo](assets/rebase.svg)

Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)

+++
### Golden rule of rebase
De gouden regel van git rebase is om het nooit te gebruiken op publieke locaties.

![Forked Repo](assets/goldenrule.svg)

Resource: [Atlassian](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)


+++

### Rebase workflow

```console
[Bestanden bewerken]
$ git add .
$ git commit -m "Beschrijving wijzigingen"
$ git pull --rebase
[Eventuele conflicten oplossen]
$ git push
```
 git pull --rebase = git fetch + rebase
+++

### Conflicten oplossen

```console
$ git push
To github.com:bertvv/git-demo.git
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'git@github.com:bertvv/git-demo.git'
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first integrate the remote changes
hint: (e.g., 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

+++

### Stap 1. Rebase

```console
$ git pull --rebase
```

+++

### Stap 2. Status!

```console
$ git status
rebase in progress; onto e5bd2df
You are currently rebasing branch 'master' on 'e5bd2df'.
  (fix conflicts and then run "git rebase --continue")
  (use "git rebase --skip" to skip this patch)
  (use "git rebase --abort" to check out the original branch)

Unmerged paths:
  (use "git reset HEAD <file>..." to unstage)
  (use "git add <file>..." to mark resolution)

	both modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
```

+++

### Stap 3. Bewerk bestand(en)

- Zoek naar markeringen
- Sommige editors ondersteunen dit!

```
If you have questions, please
<<<<<<< HEAD
open an issue
=======
ask your question in IRC.
>>>>>>> branch-a
```

+++

### Stap 4. Mark resolution

```console
$ git add .
$ git status
rebase in progress; onto e5bd2df
You are currently rebasing branch 'master' on 'e5bd2df'.
  (all conflicts fixed: run "git rebase --continue")

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   README.md
$ git rebase --continue
```

+++

### Stap 5. Push!

```console
$ git status
$ git push
$ git status
```

---


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
